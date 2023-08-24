import UIKit

//0에서 2까지
let myRange = 0...2
//0에서1까지
let mySecondRange = 0..<2
//무한대
let myThirdRange = 0...Int.max

let myFriends = ["현규", "AGO", "YENA", "채원"]
let myFriendRange = 2...3
for index in mySecondRange {
    print("index: \(index)")
}
print("\(myFriends[myFriendRange])")


if myFriendRange.contains(2){
    print("포함됨")
} else{
    print("포함안됨")

}
 
