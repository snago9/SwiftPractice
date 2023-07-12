import UIKit


//final 키워드를 사용해 이 클래스는 상속이 안되게 만듦
final class Friend{
    var name: String
    
    init (name:String){
        self.name = name
    }
}

//부모 클래스가 상속이 불가능 하기 때문에 오류가 뜨는 모습을 볼수 있음
class BestFriend : Friend{
    override init (name:String){
        super.init(name:"베프" + name)
        
    }
}

let MyFriend = Friend(name:"현규")
let MyBestFriend = BestFriend(name:"철수")
