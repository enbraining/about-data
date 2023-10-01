# 어셈블리 연산의 특징
메모리 주소 간의 연산을 수행할 때,
특정 주소에서 주소로 직접 연산할 수 없고, 반드시 레지스터를 거쳐간다.
예를 들어 메모리 0x24 위치의 값을 0x9A에 옮기려면
우선 0x24에서 rax로 옮기고, rax에서 0x9A로 옮기는 식이다.
> 출처. https://rito15.github.io/posts/intel-assembly-memo/

# 용량
어셈블리는 1줄에 1바이트 이상의 용량을 가지고 있다.
```
00007FF80FE20E2A <- mov    rcx,qword ptr [rbp+60h]  
00007FF80FE20E2E <- mov    qword ptr [rbp+30h],rcx  
00007FF80FE20E32 <- lea    rcx,[rbp+20h]
```

그리고 프로그램 카운터 역할을 수행하는 EIP 레지스터에
바로 다음에 수행될 명령어의 주소를 저장하고,
순차적 흐름에 따라 현재 명령어의 수행을 마칠 때마다
EIP에 저장된 주소를 증가시키게 된다.

# WORD
CPU가 한번에 처리할 수 있는 데이터의 양이다.

```32bit machine: WORD is 32bit```

```64bit machine: WORD is 64bit```

- 하드웨어적으로는 CPU의 기본 데이터 처리 단위와 같지만, 소프트웨어에서는 WORD는 16비트 타입이다.

# 숫자
어셈블리 코드에 작성되는 숫자의 단위는 byte이다.
|접미어|값|
|---|---|
|h|16진수 값
|b|2진수 값

# 기본 문법
```단항 연산자. <opcode> <operand>```

```이항 연산자. <opcode> <operand1> <operand2>```
- operand2를 operand1에 opcode한다.

```주석. ;<comment>```

```레이블. <Label> : <opcode> <operand1> <operand2>```

