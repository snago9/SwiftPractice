import UIKit

struct Friend {
    var name : String
    
    mutating func changename(newName : String){
        self.name = newName
        print("new name: \(newName)")
    }
}

var myFriend = Friend(name: "현규")
myFriend.changename(newName: "AGO")
