# What is Override keyword?

오버라이드를 위해서는 명시적으로 override 키워드를 붙여야 한다.
해당 문서를 확인하기 전에 kotlin/keyword/open.md를 확인하면 도움이 된다.

```kotlin
open class Car {
    open fun getSpeed():Int{
        return 80
    }
}

class Bike:Car(){
    override fun getSpeen():Int{
        return 90
    }
}
```

해당 코드를 분석하면 다음과 같다.

1. Bike는 Car를 상속받은 클래스이다.
2. Bike의 getSpeed 메소드는 Car의 getSpeed를 오버라이딩했으며, override 키워드를 사용해서 명시적으로 오버라이딩임을 지정했다.