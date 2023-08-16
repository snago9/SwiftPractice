import UIKit

let numbers = [1,1,1,5,5,9,7]

let uniqueNumbers = Set(numbers)
var arrangedNumbers = Array(uniqueNumbers)
arrangedNumbers.sort()
print(uniqueNumbers)
print(arrangedNumbers)
