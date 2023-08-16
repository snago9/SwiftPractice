import UIKit

struct Pet : Equatable{
    let id : String
    let name : String
    static func == (lhs:Pet, rhs: Pet) -> Bool{
        return lhs.id == rhs.id
    }
    static func != (lhs:Pet, rhs: Pet) -> Bool{
        return lhs.id != rhs.id
    }
}

let myPet1 = Pet(id: "01", name: "고양이")
let myPet2 = Pet(id: "02", name: "강아지")
let myPet3 = Pet(id: "01", name: "댕댕이")

if myPet1 == myPet3 {
    print("같은 팻")
}
if myPet1 != myPet2 {
    print("다른 팻")
}
