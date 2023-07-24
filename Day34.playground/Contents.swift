import UIKit

class Friend {
    func sayHi(){
        print("안녕")
    }
    class func sayBye(){
        print("잘가")
    }
    static func sayHoho(){
        print("호호")
    
    }
}

class MyFriend : Friend {
    class override func sayBye(){
        print("변경됨")
    }
    func sayHoho(){
        print("변경됨")
    }
}

var myFriend = Friend()
myFriend.sayHi
Friend.sayBye()
Friend.sayHoho()
MyFriend.sayBye()
MyFriend.sayHoho()
              
              
              
