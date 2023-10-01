|access modifier|적용 대상|접근할 수 없는 클래스|
|---|---|---|
|public|class, field, constructor, method|none|
|protected|field, constructor, method|자식 클래스가 아닌 다른 패키지에 소속된 클래스|
|default|class, field, constructor, method|다른 패키지에 소속된 클래스|
|private|field, constructor, method|모든 외부 클래스| 

- private member는 자식 클래스에 상속되지 않는다.
- class member는 어떤 접근 지정자로도 지정할 수 있지만, 클래스는 protected, private로는 지정할 수 없다.
- method를 오버라이딩할 때 부모 클래스의 메소드보다 접근 제한이 좁아질 수 없다.