import UIKit

protocol Naming{
    func getName() -> String
}
protocol Aging{
    func getAge() -> Int
}

typealias Friendable = Naming & Aging

struct Friend : Friendable {
    var name : String
    var age : Int
 
    func getName() -> String {
        return self.name}
    
    func getAge() -> Int {
        return self.age}
}

//String타입을 FriendName이란 별칭으로 쓰겠다는 뜻
typealias FriendName = String
var friendName : FriendName = "현규"
//Friend배열을 Friends라는 별칭으로 쓰겠다는 뜻
typealias Friends = [Friend]
var myFriendsArray = Friends()
//String타입으로 받고 void로 리턴하는 클로저를 Stringblock이라는 별칭으로 쓰겠다는 뜻
typealias Stringblock = (String) -> Void
//원래 completion: (String) -> Void로 사용해야함
func SayHi(completion: Stringblock){
    print("Hi")
    completion("GoodDay")
}
SayHi(completion: {saying in
    print("From here: \(saying)")
})

typealias MyType = MyClass.MY_TYPE
class MyClass{
    enum MY_TYPE{
        case Dog
        case Cat
        case bird
    }
    var myType = MY_TYPE.Dog
}
var myclass = MyClass()
myclass.myType = MyType.Dog
print("myClass type: \(myclass.myType)")
