# What is the Circular queue

Circular queue는 Linear queue의 문제점을 해결하고자 만들어졌습니다. Linear queue는 rear가 가르키는 포인터가 마지막 인덱스를 가르키고 있을 때, 앞쪽에서 Dequeue로 발생한 빈 공간을 활용할 수 없었습니다. Circular queue의 포인터 증가 방식은 (rear + 1) % arraysize이므로 배열의 첫 인덱스부터 데이터를 다시 삽입할 수 있습니다.

# Enqueue

rear의 포인트를 1 증가시키고, 그 위치에 데이터를 삽입합니다. 만약에 rear + 1이 배열의 끝이고 포화 상태가 아니라면, 배열의 첫번쨰 인덱스에 데이터를 삽입합니다.

포화 상태를 파악하기 위해 항상 한칸이 비워져있으며, (rear + 1) % arraysize == front라면 포화 상태로 판단되어 데이터의 삽입이 이루어지지 않습니다.

# Dequeue

front의 포인터를 1 증가시키고, 그 위치에 있는 데이터를 가져옵니다. rear == front라면 공백으로 판단되어 실행되지 않습니다.