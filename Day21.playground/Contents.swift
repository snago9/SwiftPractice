import UIKit

//protocol = 약속
protocol Naming {
    //이러한 변수를 가지고 있을겁니다 라는걸 알려줌
    var name : String { get set }
    //이러한 메소드를 가지고 있을겁니다
    func getName() -> String
}


struct Friend : Naming {
    var name: String
    
    func getName() -> String {
        return "내 친구: " + self.name
    }
    
}
var myFriend = Friend(name: "현규")
print("\(myFriend.getName())")
