# What is Open class

코틀린의 클래스는 기본적으로 final이어서 어떤 클래스를 그냥 상속받지 못합니다.
상속을 받기 위해서는 Super class에 open이라는 키워드를 붙여서 상속을 할 수 있도록 해야합니다.

또한 오버라이드할 메소드에도 open 키워드를 사용해야합니다.

```kotlin
open class Main {
    fun getHello():String {
        return "hello"
    }

    open fun getNumber():Int {
        return 1
    }
}

class RealMain:Main() {
    override fun getNumber():Int{
        return 2
    }
}
```

다음의 코드를 분석하면 알 수 있는 점이다.

1. class에 open 키워드를 사용하면 해당 클래스는 다른 클래스가 상속받을 수 있다.
2. 슈퍼 클래스의 메소드를 오버라이딩하려면, 오버라이딩할 메소드에도 open 키워드를 사용해야 한다.