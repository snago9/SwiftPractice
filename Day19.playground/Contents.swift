import UIKit

//콜랙션 타입 : set
//set안의 값들이 고유해야한다(똑같은 값이 들어갈수 없다)

var myNumberSet = Set<Int>()


myNumberSet.insert(1)
myNumberSet.insert(2)
myNumberSet.insert(2)
myNumberSet.insert(3)
myNumberSet.insert(3)
//set은 똑같은 값이 들어갏수 없기 때문에 count를 돌려도 5가 아니라 3이나온다
print("ItemCount: \(myNumberSet.count)")

//Set은 순서가 고정됭있지 않기 때문에 for문을 반복해서 출력하면 매번 출력되는 순서가 다르다
for item in myNumberSet{
    print("items: \(item)")
}

//Set안에 특정 item찾기
var myFriends : Set<String> = ["현규", "AGO", "YENA"]
if myFriends.contains("현규"){
    print("contains")
}
else{
    print("does not contain")
}

//Set안에 특정 item 삭제
var myBestFriends : Set<String> = ["현규", "AGO", "YENA"]
if let indexremove = myBestFriends.firstIndex(of: "AGO"){
    print("indextoremove: \(indexremove)")
    myBestFriends.remove(at: indexremove)
}
if !myBestFriends.contains("AGO"){
    print("AGO는 목록에 없음")
}
