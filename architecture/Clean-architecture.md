# What is Clean architecture?

클린 아키텍쳐는 저수준의 정책이 고수준의 정책에 의존하도록 관심사를 4가지로 분류하여 개발하는 방법이다. 고수준의 정책은 저수준의 정책을 추상화한 것으로 수정될 가능성이 적어진다. 즉, 저수준으로 갈 수록 구체적으로 로직이 생긴다.

## Layers

각 계층은 아래 계층에 의존적이다. 높은 계층일수록 저수준이며, 계층 사이의 의존관계가 역전되는 경우에는 Dependency Injection Principle에 맞추어 재설정 해야한다.

1. Entity Layer
2. Usecase Layer
3. Interface Adapter Layer
4. Framework Layer
