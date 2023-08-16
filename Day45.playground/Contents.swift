import UIKit

struct Friend  {
    let nickname : String
    let person : Person?
    
}

struct Person {
    let name : String
    let pet : Pet?

}

struct Pet {
    let name: String?
    let kind: String
}

let pet = Pet(name: "개냥이", kind: "고양이")
let person = Person(name: "현규", pet: pet)
let friend = Friend(nickname: "AGO", person: person)

if let petName = friend.person?.pet?.name{
    print("petname: \(petName)")
} else {
    print("petname 이 없음")
}

if let person = friend.person,
let pet = person.pet,
let petName = pet.name{
    print("petname: \(petName)")
} else {
    print("petname 이 없음")
}



if let person : Person = friend.person {
    if let pet = person.pet {
        if let petName = pet.name{
            print("petname: \(petName)")
        } else {
            print("petname 이 없음")
        }
    }
}
