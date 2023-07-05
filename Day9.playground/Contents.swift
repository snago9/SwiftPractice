import UIKit


//<>이 제네릭 표시로 어떠한 변수 형태 라도 받겠다는 표시
struct MyArray<SomeElement>{
    
    //재네릭을 담은 빈 배열
    var element : [SomeElement] = [SomeElement]()
    
    //생성자
    init(_ element: [SomeElement])
    {
        self.element = element
    }
}
struct Friends {
    var name : String
}

var Arraynum = MyArray([1,2,3])
print("ArrayNum: \(Arraynum)")

var ArrayString = MyArray(["A","B","C"])
    print("ArrayString: \(ArrayString)")

let friend_01 = Friends(name: "ABC")
let friend_02 = Friends(name: "DEF")
let friend_03 = Friends(name: "GHI")

var myFriendArray = MyArray([friend_01,friend_02,friend_03])
print("myFriendArray: \(myFriendArray)")



