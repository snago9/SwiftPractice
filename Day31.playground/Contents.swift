import UIKit

let MyfriendsArray : [String] = ["현규","AGO","YENA","채원"]

let myFriends = MyfriendsArray.map{aFriend in
    return "내 친구: " + aFriend
}

let myNumbersArray : [Int] = [34, 23, 09, 29]
let myNumber = myNumbersArray.map{
    return "내 숫자:  \($0)"
}

let myPetDictionary = ["고양이" : "야옹", "강아지" : "멍멍", "소" : "음머"]
let myPet = myPetDictionary.map{ animal ,cry  in
    return "\(animal)의 울음소리는 \(cry)"
}

let myNumberSet: Set<Int> = [1,1,2,3,2,2,3]
let myNumbers = myNumberSet.map { aNumber in
    return aNumber * 10
}
