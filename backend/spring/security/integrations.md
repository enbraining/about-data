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

```
Encryptors.text("password", "salt");
```
위의 코드를 사용하여 문자열을 암호화하며, 암호화된 결과는 사용하기 쉽도록 16진수 인코딩 문자열로 반환된다.
