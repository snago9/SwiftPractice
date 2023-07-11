import UIKit

class Friend {
    var name : String
    
    init(_ name : String){
        self.name = name
    }
    func SayHi(){
        print("my name is \(self.name)")
    }
}


class BestFriend : Friend {
    //override를 통해 부모의 메소드를 가져왔다
    override init(_ name: String){
        //super를 통해 부모의 메소드를 사용
        super.init("Best " + name)
    }
    override func SayHi(){
        super.SayHi()
    }
}

let MyFriend = Friend("현규")
MyFriend.SayHi()
let myBestFriend = BestFriend("AGO")
myBestFriend.SayHi()
