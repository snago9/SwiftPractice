import UIKit

protocol petHave{
    associatedtype T
    var pets : [T]{ get set }
    mutating func gotNewPet(_ newpet: T)
    
}

extension petHave{
    mutating func gotNewPet(_ newpet: T){
        self.pets.append(newpet)
    }
}

enum Animal{
    case cat, dog, bird
}

struct Friend : petHave {
    var pets: [Animal] = []
}

struct Family : petHave{
    var pets: [String] = []
}

var myFriend = Friend()
myFriend.gotNewPet(Animal.cat)
myFriend.gotNewPet(Animal.dog)
myFriend.gotNewPet(Animal.bird)
print("\(myFriend.pets)")

var myFamily = Family()
myFamily.gotNewPet("rabbit")
myFamily.gotNewPet("turtoise")
print("\(myFamily.pets)")
