import UIKit

class Friend {
    var name : String = ""
    var age : Int
    var detailInfo : String = ""
    var info : String {
        get{
            return "내친구: \(name) 나이는: \(age)"
        }
        set{
            detailInfo = "info값: " + newValue
        }
    }
    
    init(_ name: String,_ age : Int) {
        self.name = name
        self.age = age
    }
}

let MyFriend = Friend("AGO",25)
MyFriend.info
//info 설정
MyFriend.info = "호롤롤로"
MyFriend.detailInfo
