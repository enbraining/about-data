# 정의

URI는 Uniform Resource Identifier의 약자이며 리소스를 식별하기 위한 수단이다.
URL은 URI의 하위 개념으로 Uniform Resource Locator의 약자이며, 리소스의 위치를 식별하기 위한 수단이다.

# URI의 구성
URI의 구성은 다음과 같다.

> https://www.naver.com/path?list=1#fragment

|구성|예시|정의|
|---|---|---|
|Scheme|https://|프로토콜을 정의하기 위해서 쓰인다.|
|Host|www.naver.com|호스트의 주소로 도메인이나 IP가 쓰인다.|
|Path|/path|웹 브라우저가 리소스를 찾기 위해 쓰인다.|
|Query|?list=1|웹 브라우저가 서버에 파라미터를 전달하기 위해 쓰인다.|
|Fragment|#fragment|웹 브라우저만 가지고 있으며, 메인 리소스에서 서브 리소스를 식별할 때 사용한다.|