# 오류를 내보자
```kotlin
@Entity
public class User {
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String user_name;
}
```
