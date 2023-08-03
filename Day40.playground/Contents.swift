import UIKit

//convenience init -> 추가 생성자

class Friend {
    var name: String
    var age: Int
    init (name: String){
        self.name = name
        self.age = 25
    }
    convenience init(name: String, age: Int) {
        self.init(name: name)
        self.age = age
    }
}

let myFriend = Friend(name: "현규", age: 26)
let myNewFriend = Friend(name: "AGO")
print(myFriend.name)
print(myFriend.age)
print(myNewFriend.name)
print(myNewFriend.name)
