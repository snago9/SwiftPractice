import UIKit

struct Pet{
    init(){
        print("Pet이 생성됨")
    }
}

struct Friend{
    var name: String
    
    //lazy 키워드는 당장 사용하는 것이 아닌 lazy키워드가 붙은 변수에 접근을 했을때 사용을 한다
    lazy var pet: Pet = Pet()
    
    init(_ name: String){
        self.name = name
        print("Friend가 생성됨 ")
    }
}

var MyFriend = Friend("현규")
MyFriend.pet
