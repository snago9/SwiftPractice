import UIKit

protocol Naming{
    var name : String { get set }
}

class Cat : Naming {
    var name : String
    init(name: String){
        self.name = name
    }
}

class Dog : Naming {
    var name : String
    init(name: String){
        self.name = name
    }
}

extension Naming where Self : Cat {
    func SayName(){
        print("\(self.name) 야옹이")
    }
}
extension Naming where Self : Dog {
    func SayName(){
        print("\(self.name) 댕댕이")
    }
}

let myDog = Dog(name: "강아지")
let myCat = Cat(name: "고양이")
myDog.SayName()
myCat.SayName()
