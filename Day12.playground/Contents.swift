import UIKit

class MyFriend{
    var name : String
    
    init(_ name: String = "이름 없음"){
        self.name=name
        print("메모리에 올라감: \(self.name)")
    }
    deinit {
        print("메모리에서 사라짐: \(self.name)")
    }
    //deinit 즉 메모리에 삭제된걸 보여주기 위함
    var calledTime = 0
    let MAX_TIMES = 5
    
    static var instanceSelfOf = [MyFriend]()
    
    class func destroyself(object: MyFriend){
        instanceSelfOf = instanceSelfOf.filter{(aFriend : MyFriend) in
            aFriend !== object
        }
    }
    
    func call(){
        calledTime += 1
        print("called: \(calledTime)")
        if calledTime > MAX_TIMES{
            MyFriend.destroyself(object: self)
        }
    }
    
}

let myFriend = MyFriend("AGO")
let aFriend = MyFriend()

//올라간 메모리 주소를 출력하는 문구
//크게 중요하진 않음
let anObjectMemorryAdress = Unmanaged.passUnretained(aFriend).toOpaque()
let SecondMemorryAdress = Unmanaged.passUnretained(myFriend).toOpaque()
print(anObjectMemorryAdress)
print(SecondMemorryAdress)

//지우는걸 보여주는 중
weak var FriendTobeDestroyed = MyFriend("AGO")

if FriendTobeDestroyed != nil{
    FriendTobeDestroyed!.call()
}
else{
    print("메모리에서 지워짐")
}
