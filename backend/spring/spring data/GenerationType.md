# What is the GenerationType?

JPA 객체에서 Entity 객체를 정의할때는 항상 id가 있어야하며, @Id로 이를 정의한다.
이런 id는 @Id만 사용해 직접 생성해줄 수도 있지만, @GeneratedValue와 함께 사용해  자동으로 생성하는 방법도 있다. 이제 우리는 @GeneratedValue의 generationType 옵션을 이용해서 id를 할당하는 여러가지 방법을 사용해볼 것이다.

## Type of generationType

1. TABLE
    - 특정 벤더에 의존적이지 않다.
    - 시퀀스 테이블을 만들어서 데이터베이스의 시퀀스를 흉내낼 Id를 생성한다.

2. IDENTITY
    - 기본키 생성을 DB에게 위임한다.
    - id가 null이라면 DB의 AUTO INCREMENT를 가져와 할당한다.

3. SEQUENCE
    - DB의 시퀀스 객체를 이용해서 유일한 값을 차례대로 생성한다.

4. AUTO
    - DB 벤더에 따라 위의 3가지 전략 중 하나를 자동으로 정한다.

## 관련 키워드

- @TableGenerator
- @SequenceGenerator