# What is the Tree?
데이터 사이의 계층 관계를 노드로 나타낸 자료구조
## Constructure
- Root. 트리의 가장 위에 위치하는 노드이다. 하나의 트리에 하나의 Root가 존재한다.
- Leaf. 트리의 가장 밑에 위치하는 노드로, 물리적으로 더이상 뻗어나갈 수 없는 노드
- Child. 어떤 노드로부터 아래에 연결된 노드를 Child node라고 한다.
- Parent. 어떤 노드에 가지로 연결된 위쪽 노드를 Parent node라고 한다.
![](https://velog.velcdn.com/images%2Froro%2Fpost%2F451ac29b-42f1-491b-9599-1459355b421b%2FUntitled.png)
## Binary tree
Parent node가 두개의 Child node를 가진다.
## Heap tree
배열의 원소를 정렬하기 위해서 사용합니다. Priority queue를 구현할 때 있어 핵심적인 기능입니다.
### Types of heap
크게 Max heap과 Min heap으로 나뉩니다.
1. Max heap. 부모 노드의 키 값이 자식 노드의 키 값보다 크거나 같은 완전 이진 트리
2. Min heap. 부모 노드의 키 값이 자식 노드의 키 값보다 작거나 같은 완전 이진 트리

## Implement
대표적으로 배열이 힙을 구현하기 위해 사용됩니다.
### Node relationship
1. 0-Base
	- left child. $parent\; index * 2 + 1$
	- right child. $parent\; index * 2 + 2$
	- parent. $child / 2 - 1$
1. 1-Base 
	- 편하게 구현하기 위해 0번째 배열을 사용하지 않는 노드 관계입니다.
	- left child. $parent\; index * 2$
	- right child. $parent\; index * 2 + 1$
	- parent. $child / 2$
