import UIKit

var myAge = 0{
    willSet{
        print("값 설정 예정: \(myAge)")
    }
    didSet{
        print("설정된 값: \(myAge)")
    }
}
myAge = 25
