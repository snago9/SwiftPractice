import UIKit

protocol Naming {
    var name : String { get set }
    func getName() -> String
}

protocol Aging {
    var age : Int { get set }
}

protocol UserNotifiable : Naming, Aging {
    
}

struct MyFriend : UserNotifiable {
    var name: String
    
    func getName() -> String {
        return self.name
    }
    
    var age: Int
    
}
