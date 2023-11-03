배열의 원소를 정렬하기 위해서 사용합니다. Priority queue를 구현할 때 있어 핵심적인 기능입니다.
# Types of heap
크게 Max heap과 Min heap으로 나뉩니다.
## Max heap
부모 노드의 키 값이 자식 노드의 키 값보다 크거나 같은 완전 이진 트리
## Min heap
부모 노드의 키 값이 자식 노드의 키 값보다 작거나 같은 완전 이진 트리

# Implement
대표적으로 배열이 힙을 구현하기 위해 사용됩니다.
# Node relationship
1. 0-Base
	- left child. $parent\; index * 2 + 1$
	- right child. $parent\; index * 2 + 2$
	- parent. $child / 2 - 1$
1. 1-Base 
	- 편하게 구현하기 위해 0번째 배열을 사용하지 않는 노드 관계입니다.
	- left child. $parent\; index * 2$
	- right child. $parent\; index * 2 + 1$
	- parent. $child / 2$
