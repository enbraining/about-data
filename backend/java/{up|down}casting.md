# Casting
타입을 변환하는 것이다. 슈퍼 클래스와 서브 클래스 사이에도 형변환이 가능하다.

# Upcasting
서브 클래스의 객체가 슈퍼 클래스의 객체로 변환되는 것이다. 
```java
Person p = s;

// Person : name
// Student : name, show()
```
p가 Student 객체를 가리키지만, p는 Person 타입이기 때문에 Person 클래스의 멤버에만 접근할 수 있다. show()에 접근하려고 하면 런타임 오류가 발생할 것이다.

# Downcasting
업캐스팅된 객체를 다시 원상태로 돌리는 것이다. 다운캐스팅은 명시적으로 타입을 지정해줘야 한다.
```java
Student s = (Student)p;

// Person : name
// Student : name, show()
```
s는 name과 show()에 접근 가능하다.
