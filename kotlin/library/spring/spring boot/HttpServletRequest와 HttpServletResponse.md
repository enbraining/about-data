# HttpServletRequest
> Http 요청 프로토콜과 관련된 객체

서블릿 객체는 서블릿 컨테이너가 관리하며, 콜백 메소드 호출도 마찬가지이다.
콜백 메소드가 전달되기 위해서는 콜백 메소드의 매개 변수로 선언한 데이터가 인자로 전달되어야한다.
## 요청 과정
1. Http request
	- 브라우저가 요청한 정보들을 HttpServletRequest에 담아준다.
2. HttpServletRequest
	- Servlet Container은 DoPost method가 호출되기 바로 직전에 HttpServletRequest object를 생성한다.
3. doPost method
	- doPost method에 HttpServletRequest object를 넘겨준다.
	- 참조변수를 이용하면 메모리 상의 HttpServletRequest에 접근이 가능하다고 한다.
## 활용
```java
String protocol = request.getProtocol();  
String header = ((HttpServletRequest) request).getHeader("Authorization");
```
> 이렇게 Http header에서 정보들을 불러올 수 있다.
## 관계
HttpServletRequest, ServletRequest are Interface. and HttpServletRequest is Subclass to ServletRequest.
## Implement
다음은 HttpServletRequest가 ServletRequest로 부터 상속받은 것이다.

|Method|function|
|---|---|
|void setAttribute(String name, Object value)|ServletRequest에 데이터를 등록한다.|
|Object getAttribute(String name)|ServletRequest에 등록된 데이터를 추출한다.|
|Enumeration getAttributeNames()|ServletRequest에 등록된 데이터의 name 목록을 반환한다.|
|void removeAttribute(String name)|ServletRequest에 등록된 데이터를 삭제한다.|
|String getCharaterEncoding()|ServletRequest에 등록된 인코딩 방식을 반환한다.|
|void setCharacterEncoding(String encoding)|message-body에 포함된 문자 데이터에 대한 인코딩을 설정한다.|
|String getParameter(String name)|사용자가 입력한 파라미터 중에서 name에 해당하는 파라미터 값을 리턴한다.|
|String`[]` getParameterValues(String name)|하나의 name을 통해 전달된 여러 개의 값을 배열로 리턴한다. ex. 체크박스|
|Enumeration`<String>` getParameterNames()|사용자가 전달한 파라미터들의 name 목록을 리턴한다.|
|int getContentLength()|message-body를 통해 전달한 데이터의 크기를 리턴한다.|
|String getProtocole()|요청에 사용한 프로토콜의 이름/버전을 리턴한다.|
|String getRemoteAddr()|요청한 브라우저의 IP 주소를 리턴한다.|
|int getServerPort()|요청을 받은 서버의 포트 번호를 리턴한다.|
|ServletContext getServletContext()|서버가 구동되는 순간 서버에 등록된 웹 애플리케이션 당 하나씩 생성되는 ServletContext 객체를 리턴한다.|
|RequestDispatcher getRequestDispatcher(String path)|브라우저의 요청을 특정 경로(path)로 이동하기 위한 RequestDispatcher 객체를 리턴한다.|

# HttpServletResponse
> Http 응답 프로토콜과 관련된 객체


- case1 : access token과 refresh token 모두가 만료된 경우 **→** 에러 발생 (재 로그인하여 둘다 새로 발급)

- case2 : access token은 만료됐지만, refresh token은 유효한 경우 **→**  refresh token을 검증하여 access token 재발급

- case3 : access token은 유효하지만, refresh token은 만료된 경우 **→**  access token을 검증하여 refresh token 재발급

- case4 : access token과 refresh token 모두가 유효한 경우 **→** 정상 처리
