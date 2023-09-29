# Servlet & Reactive
클라이언트에서 오는 요청을 처리하는 두 가지 방식이다.

# Servlet
> sync & blocking
> request : thread = 1 : 1
- 각 요청마다 하나의 스레드가 사용된다. (thread-per-request)
- 요청이 늘어날 것을 대비해 미리 쓰레드가 만들어져 있다.

# Reactive
> async & non-blocking
> request : thread = n : 1
- non-blocking과 고정된 스레드 수 안에서 요청을 처리함으로써 Servlet의 문제를 해결한다.