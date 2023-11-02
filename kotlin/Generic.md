코틀린도 자바와 마찬가지로 Generic이 있다. 자바와 달리 Generic class에 타입을 필수적으로 넣어줘야 한다.

```java
// List<Object>로 암시적으로 실행됨
List names;
```

```kotlin
// 에러
// val names:List<Object>
val names:List
```