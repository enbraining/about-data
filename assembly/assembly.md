# 어셈블리어는?

- 기계어와 1:1 대응되는 언어이다.
- 00101010 같이 2진수로 이루어진 기계어를 사람이 이해할 수는 없기에 만들어졌다.

# 피연산자 순서
- Intel, AT&T 문법으로 나뉘며, 차이점이 존재하고 서로 호환되지 않는다.
```
Opcode Operand1 Operand2
ADD    EAX      EBX
```
위와 같은 코드가 있을때 Intel Operand는 Operand1이 Source, Operand2가 Destination으로 EBX의 값을 EAX에 더한다는 뜻이다.

AT&T Operand는 반대로 Operand1이 Destination, Operand2가 Source로 EAX의 값을 EBX에 더한다는 뜻이 된다.

# 숫자 표기
- Intel. 1 2 3 4 5 // 숫자를 그대로 사용한다.
- AT&T. $1 $2 $3 $4 $5 // 숫자 앞에 $를 붙여서 사용한다.

# 레지스터 표기
- Intel. EAX EBX EBP // 명칭을 그대로 사용한다.
- AT&T. %EAX %EBX %EBP // 명칭 앞에 %를 붙여서 사용한다.