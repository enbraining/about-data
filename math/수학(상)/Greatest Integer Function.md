$[n]$ n보다 크지 않은 최대의 정수
# Condition
- 결과의 값이 정수이거나
- 정수의 부분이어야 한다.
# Example
- $[x] = 3$ : *$3 \le x < 4$*
- $[2.5] = 2$ : Condition 1
- $[-1.6] =  -2$ : Condition 1
- $[\sqrt{3}] = 1$ : Condition 2
- 단, $[x]$는 x보다 크지 않는 최대의 정수 
  $$[x]^2-12[x]+32 = 0$$
  1. factorization
  $$([x]-4)([x]-8)=0$$
  2. result
$$
     \begin{align}
	     4\le x<5 \\
	     8\le x<9
	\end{align}
$$
- 단, $1 < x < 3$
$$x^2-[x]-3 = 0$$
1. 범위에 따라 나눈다.
$$\begin{align}
	1 \le x < 2 \\
	2 \le x < 3 \\
	\\ \\
	범위를 벗어남 \\
	[x]=1 \\
	x^2-4 = 0 \\
	x = \pm 2
	\\ \\
	[x] = 2 \\
	x^2 - 5 = 0 \\
	x = \pm\sqrt{5} \\
	\sqrt{5}만이 범위에 들어온다.
\end{align}$$







