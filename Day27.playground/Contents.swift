import UIKit

//고차함수
//매게변수로 함수 혹은 클로저를 받고 뱉었던 녀석들을 반환하는 함수
func getName(_ name:String) -> String {
    return "내 이름은 \(name)"
}

func sayHello(getName: (String) -> String, name: String) -> String{
    return getName(name)
}

let resultOne = sayHello(getName: getName(_:), name: "현규")

