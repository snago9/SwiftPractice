import UIKit

//콜랙션: 데이터를 모아두는 곳 (배열, 셋, 딕셔너리)
var myArray : [Int] = [0,1,2,3,4,5,6,7,8,9,10]

//foreach 반복문

for item in myArray {
    print("\(item)")
}

//조건을 추가할때 where을 사용
//5보다 큰수만 출력
for item in myArray where item>5 {
    print("\(item)")
}

//짝수만 출력
for item in myArray where item % 2 == 0 {
    print("\(item)")
}
