import UIKit

var myArray = ["one","2","three","4"]

let intArray = myArray.map{ item in
    return Int(item)
}


let onlyIntArray = myArray.compactMap{ item in
    return Int(item)
}

