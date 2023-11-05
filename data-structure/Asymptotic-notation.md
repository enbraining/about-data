# What is the Asymptotic notation?

중요하지 않은 상수와 계수는 제거하고 가장 큰 영향만 주는 항만 계산해서 표기하는 것을 점금적 표기법이라고 한다.
점금적 표기법은 3가지로 나뉜다.

1. Big-$\Omega$ Notation. 최상의 경우
2. Big-$\Theta$ Notation. 평균의 경우
3. Big-O Notation. 최악의 경우

# Big-O Notation

Big-O Notation은 불필요한 연산을 제거하여 알고리즘을 분석할 목적으로 사용한다.

- 시간 복잡도는 입력된 N의 크기에 따라 실행되는 조작의 수를 나타낸다.
- Big-O로 측정되는 복잡성에는 시간과 공간복잡도가 있다.

# 시간복잡도

|수|시간복잡도|설명|
|---|---|---|
|$1$|$O(1)$|상수|
|$2n+20$|$0(n)$|$n$이 가장 큰 영향을 미친다.|
|$3n^2$|$O(n^2)$|$n^2$가 가장 큰 영향을 미친다.|