import UIKit

struct YoutuberStruct {
    var name : String
    var subscriber: Int
}
var devJung = YoutuberStruct(name: "정대리", subscriber: 99999)
var devJungClone = devJung

print("(Struct) 새로 선언 전 devJungClone.name= \(devJungClone.name)")
devJungClone.name = "AGO"
print("(Struct) 선언 후 devJungClone.name= \(devJungClone.name)")
print("(Struct) 선언 후 devJung.name= \(devJung.name)")

//클래스는 생성자를 만들어줘야한다 -> 메모리에 올린다는 뜻
class YoutuberClass{
    var name : String
    var subscriber: Int
    //initializer 시작한다(메모리에 올린다)
    init(name: String, subscriber: Int){
        self.name = name
        self.subscriber = subscriber
    }
}

var Jung = YoutuberClass(name: "정대리", subscriber: 99999)
var JungClone = Jung
print("(Class) 새로 선언 전 JungClone.name= \(JungClone.name)")
JungClone.name = "AGO"
print("(Class) 선언 후 JungClone.name= \(JungClone.name)")
print("(Class) 선언 후 Jung.name= \(Jung.name)")

//Struct는 devJungClode을 선언 할때 새롭게 복사를 한다는 느낌이다 그래서 devJungClone을 변경해도 devJung은 변하지 않음
//Class같은 경우 똑같은 애를 본따서 서로 연결되어 있는(Sync) 변수를 선언하는 느낌이다 그래서 Jungclone을 변경하면 Jung변수도 같이 변함
//쉽게말해 class는 같은 메모리 공간을 참조한다
