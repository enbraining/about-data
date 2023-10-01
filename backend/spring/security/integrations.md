스프링 시큐리티는 많은 프레임워크와 API의 통합을 제공한다. 여기서는 Servlet과 Reactive를 따로 나누지 않고 소개하며, 나중에 Servlet과 Reactive를 세부적으로 설명할 예정이다.

# Cryptography
Crypto 모듈은 대칭 암호화, 키 생성 및 비밀번호 인코딩 등을 지원한다.

## Encrypto
Encrypto 클래스는 대칭 암호화를 구성하기 위한 팩토리 메서드를 제공한다. 이 클래스는 byte[] 형식으로 데이터를 암호화하는 BytesEncryptor 인스턴스를 만들 수 있으며,
TextEncryptor 인스턴스를 생성하여 텍스트 문자열을 암호화할 수도 있다. 이러한 암호화는 멀티 스레드 환경으로부터 안전하다.

### BytesEncrypto

Encryptors.stronger 팩토리 메소드를 사용하여 BytesEncryptor를 생성할 수 있다.

```java
// BytesEncrypto
Encryptors.stronger("password", "salt");
```
GCM을 사용하여 256비트 AES 기반으로 암호화하며,
PBKDF2를 사용하여 암호를 도출한다. 비밀키를 생성하는 데 사용되는 비밀번호는 보안된 장소에 보관되어야한다. salt는 암호화된 데이터가 손상된 경우 키에 대한 사전 공격을 방지하기 위해 사용된다. 또한 16바이트 랜덤 초기화 벡터가 적용되어 암호화된 메시지마다 값이 다 다르다.

```java
// Generating a key
String salt = KeyGenerators.string().generateKey();
```
CBC를 사용하여 256비트 AES 기반으로 암호화하며, 
이 모드는 인증되지 않았으며 데이터의 사실 여부를 확인하지 않는다. 좀 더 안전한 Encryptors.stronger를 사용하는 것이 좋다.

### TextEncrypto

> You can use the Encryptors.text factory method to construct a standard TextEncryptor
- Encryptors.text factory method을 사용하여 표준 TextEncryptor를 구성할 수 있다.

```java
Encryptors.text("password", "salt");
```
위의 코드를 사용하여 문자열을 암호화하며, 암호화된 결과는 사용하기 쉽도록 16진수 인코딩 문자열로 반환된다.

## Key Generators

### BytesKeyGenerator
KeyGenerators.secureRandom factory method를 사용하여 SecureRandom 인스턴스가 지원하는 BytesKeyGenerator를 생성할 수 있다.

```java
BytesKeyGenerator generator = KeyGenerators.secureRandom();
byte[] key = generator.generateKey();
```
기본적으로 키의 길이는 8바이트이며, 
The default key length is 8 bytes. KeyGenerators.secureRandom을 변형하면 키의 길이를 바꿀 수 있다.
```java
KeyGenerators.secureRandom(16);
KeyGenerators.shared(16); // 공유 키
```

### StringKeyGenerator
KeyGenerators.string factory method를 사용하여 키를 String으로 16진수 인코딩하는 8바이트 SecureRandom KeyGenerator를 구성할 수 있다.
```java
KeyGenerators.string();
```

## Password Encoding
Password Encoding은 spring-security-crypto 모듈에 포함되어 있다. PasswordEncoder는 핵심적인 서비스 인터페이스이며 다음과 같은 구조를 가진다.
```java
public interface PasswordEncoder {
	String encode(CharSequence rawPassword);

	boolean matches(CharSequence rawPassword, String encodedPassword);

	default boolean upgradeEncoding(String encodedPassword) {
		return false;
	}
}
```
- encode. 문자열을 암호화한다.
- matches. 암호화된 문자열과 문자열을 비교해서 동일하면 true를 반환한다.

PassowrdEncoder interface를 구현한 구현체들이 다양하며,
대표적으로 bcrypt 암호화를 사용하는 BcryptPasswordEncoder 등이 있다. 
BcryptPasswordEncoder는 임의의 16바이트 salt 값을 사용하며, 암호 크래커를 방지하기 위해 사용하는 알고리즘이다. 

4에서 31 사이의 값을 가지는 strength 매개 변수를 사용하여 암호화 단계를 조정할 수 있다. 값이 높을수록 해시를 계산하기 위해 더 많은 작업을 수행해야하며, 보안이 향상된다. 

기본값은 10이며, 암호화된 해시에도 값이 저장되므로 배포된 시스템에서 기존 암호에 영향을 주지 않고 이 값을 변경할 수 있다. 아래의 코드로 예시를 들어보자.

```java
// Create an encoder with strength 16
BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(16);
String result = encoder.encode("myPassword");
assertTrue(encoder.matches("myPassword", result));
```

pdkdf2 암호화도 있으며 코드는 다음과 같다. 굳이 알고리즘까지 소개하지는 않겠다.
```java
// Create an encoder with all the defaults
Pbkdf2PasswordEncoder encoder = Pbkdf2PasswordEncoder.defaultsForSpringSecurity_v5_8();
String result = encoder.encode("myPassword");
assertTrue(encoder.matches("myPassword", result));
```

# Spring Data
Spring Security는 쿼리에서 참조할 수 있는 Spring Data 통합 기능을 제공한다.

## Spring Data & Spring Security Configuration
의존성으로 org.springframework.security:spring-security-data이 추가되어있어야 한다.
아래는 설정 코드이다.

```java
@Bean
public SecurityEvaluationContextExtension securityEvaluationContextExtension() {
	return new SecurityEvaluationContextExtension();
}
```
XML로 설정하는 방법은 따로 설명하지 않겠다.

# Security Expressions within @Query
Spring Security에서 쿼리를 보낼 수 있는 방법이다.
아래는 예시 코드이다.
```java
@Repository
public interface MessageRepository extends PagingAndSortingRepository<Message,Long> {
	@Query("select m from Message m where m.to.id = ?#{ principal?.id }")
	Page<Message> findInbox(Pageable pageable);
}
```
 Authentication.getPrincipal().getId()가 메시지의 수신자와 동일한지 확인한다.