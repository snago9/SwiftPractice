import UIKit

//0...5 는 0,1,2,3,4,5를 뜻하는 레인지
//0..<5 는 5보다 작을때까지의 레인지
for i in 0...5{
    print("num: \(i)")
}
print("\n")

for i in 0..<5{
    print("num: \(i)")
}
print("\n")

var randomInt: [Int] = []

for _ in 0..<25{
    let randomNumber=Int.random(in: 0...100)
    randomInt.append(randomNumber)
}
print("random Number: \(randomInt)")
