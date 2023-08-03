import UIKit

struct Pet {
    var name: String? = nil
    var age: Int? = nil
    init(){}
    init(builder: SecondPetBuilder){
        self.name = builder.name
        self.age = builder.age
    }
}

class PetBuilder {
    public var pet : Pet = Pet()
    func withName (_ name: String) -> Self{
        pet.name = name
        return self
    }
    func withAge(_ age: Int) -> Self{
        pet.age = age
        return self
    }
    func build() -> Pet{
        return self.pet
    }
}

class SecondPetBuilder {
    var name: String? = nil
    var age: Int? = nil
    typealias BuilderClosure = (SecondPetBuilder) -> ()
    init(buildClosure: BuilderClosure){
        buildClosure(self)
    }
}

let myPet = PetBuilder()
    .withName("고양이")
    .withAge(10)
    .build()

let petBuilder = SecondPetBuilder{builder in
    builder.name = "강아지"
    builder.age = 9
}
let mySecondPet = Pet(builder: petBuilder)

print(myPet)
print(mySecondPet)
