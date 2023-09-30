# Aspect Oriented Programming
관점 지향 프로그래밍이라고 불리며, 로직을 기준으로 보고 각각 모듈화하겠다는 것이다.

# AOP main concept
- Aspect. 관심사들을 모듈화 한 것으로, 주로 부가기능을 모듈화 한다.
- Target. Aspect가 적용되는 곳이다. (클래스, 메서드 등)
- Advice. 실제로 어떻게 작동할지를 실질적인 기능으로 나타낸 구현체
- JointPoint. Advice가 적용될 위치, 끼어들 수 있는 지점, 메서드 진입 지점, 생성자 호출 시점, 필드에서 값을 꺼내올 때 등 다양한 시점에 적용이 가능하다.
- PointCut : JointPoint의 상세한 스펙을 정의한 것이다. 'A란 메서드의 진입 시점에 호출할 것'과 같이 더욱 구체적으로 Advice가 실행될 지점을 정할 수 있다.

> 출처 : https://engkimbs.tistory.com/746

# AOP point
- 스프링 빈에만 AOP를 적용 가능
- 무조건 AOP를 사용하는 것이 아니라 필요한 경우에만 쓰여야 한다. (중복코드, 프록시 클래스  작성의 번거로움, 객체들 간 관계 복잡도 증가 etc)
