import UIKit

class myClass {
    
    //인스턴스 메소드
    func saySomething(){
        print("say Something")
    }
    //상속이 가능하다
    class func sayHi(){
        print("안녕")
    }
    
    static func sayHello(){
        print("얀녕하세요")
    }
    //상속이 안되게 하는 final 키워드
    final class func sayHiHello(){
        print("안녕, 안녕하세요")
    }
}
class mySubClass : myClass {
    
    override func saySomething() {
        super.saySomething()
        print("mySubClass.saySomething() 호출")
    }
    override class func sayHi() {
        super.sayHi()
        print("mySubClass.sayHi() 호출")
    }
}
mySubClass.sayHi()
myClass.sayHi()

let myObject = myClass()
myObject.saySomething()
