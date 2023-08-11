import UIKit

struct Friend : Hashable {
    var name : String
    var age : Int
}

let myFriends = [
    Friend(name: "현규", age: 26),
    Friend(name: "AGO", age: 26),
    Friend(name: "YENA", age: 24),
    Friend(name: "채원", age: 22),
    Friend(name: "유리", age: 23)
]

let totalAge = myFriends.reduce(0) { partialResult, aFriend in
    return partialResult + aFriend.age
}

let groupedFriends = myFriends.reduce(into: [:]) {partialResult, aFriend in
    partialResult[aFriend.age] = myFriends.filter{$0.age == aFriend.age}
        
}

print(groupedFriends, "\n")
print(totalAge)
