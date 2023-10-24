# [N]IO
- IO에 Non-Blocking과 비동기가 추가된 것이 NIO이다.
- 무조건 특정 패키지가 좋은 건 아니며, 단순한 것은 IO 패키지가 좋을 때가 있다.

# [N]IO의 구성
![](https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FeeGXsa%2FbtqAxNFlKfv%2Fmzuzt9Lj3wzEQxWf3rjRG0%2Fimg.png)

# IO의 구성
![](https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FtwMdM%2FbtqAvkbU4GI%2FQKgD6ghfE6pAQkd06PEJk1%2Fimg.png)
- File. 파일의 위치를 가지고 있으며, 파일을 편집할 수 있는 다양한 메소드들을 가지고 있음


# 파일 객체 생성
```java
import java.io.File;

public class Main {
	public static void main(String[] args) {
		
		// 파일의 주소 및 파일명을 가진 file 객체 생성
		File file = new File("C:\\JAVA\\FirstStudy\\FisrtStudy\\input.txt");
	
		// 파일이 실제 존재하는지 확인
		System.out.println(file.exists());
		
		// 파일의 길이 정보 확인 (byte)
		System.out.println(file.length());
	}	
}
```

# 이외에도
io 패키지에는 FileWriter, FileReader, File{Input | Output}Stream 등이 있으니 추가로 정리할 예정이다.

