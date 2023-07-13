import UIKit

//프로토콜 안에서는 메소드를 선언만 할수 있지 로직을 추가할수는 없다
protocol Naming {
    var lastname : String { get set }
    var firstname : String { get set }
    func getName() -> String
}

//extension 키워드를 사용해 메소드에 로직을 추가한다
extension Naming {
    func getName() -> String {
        return self.lastname +  " " + self.firstname
    }
}

struct Friend : Naming {
    var lastname: String
    var firstname: String
    
}

let myFriend = Friend(lastname: "Im", firstname: "HyunGyu")
print("\(myFriend.getName())")

