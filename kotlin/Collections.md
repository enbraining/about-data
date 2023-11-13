# Collections
Kotlin(이하 코틀린)에는 Collection(이하 컬렉션)이 2개가 있다.

## Mutable

```kotlin
val mutableList: MutableList<Int> = mutableListOf(1,2,3,4,5)

mutableList.add(6)

for (i in 0 until mutableList.size) {
    println(mutableList.get(i)) // 1,2,3,4,5,6
}
```

## Immutable

원본 리스트를 수정하지 않고 수정된 새로운 리스트를 반환한다.

```kotlin
val immutableList: List<Int> = listOf(1,2,3,4,5)

immutableList.add(6) // Error, 애초에 add() 가 존재하지 않는다.

for (i in 0 until immutableList.size) {
    println(immutableList.get(i)) // 1,2,3,4,5
}
```
