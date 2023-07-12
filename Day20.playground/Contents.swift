import UIKit

struct Friend {
    var age : Int
    var name : String
    
    func SayHello() -> String {
        print("Hello")
        return "I am \(age) years old and my name is \(name)"
    }
}

var myFriend = Friend(age: 25, name: "현규")
print("\(myFriend.SayHello())")
