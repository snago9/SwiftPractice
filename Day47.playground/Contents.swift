import UIKit

let Friends = ["현규", "AGO", "YENA"]
let Pet = ["고양이", "강아지", "오리"]

let Pairs = zip(Friends, Pet)

for aPair in Pairs {
    print("\(aPair.0), \(aPair.1)")
}

let myArray = Array(Pairs)
print(Pairs)
