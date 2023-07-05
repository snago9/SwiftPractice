import UIKit


//함수, 메소드 정의
func myFunction (name: String) -> String{
    return "안녕하세요 \(name) 입니다."
}

//함수, 매소드 호출(call)
myFunction(name: "임현규")


func myFunctionSecond (with name: String) -> String{
    return "안녕하세요 \(name) 입니다."
}
myFunctionSecond(with: "AGO")


//_를 쓰면 파라메터 이름을 쓰지 않아도 된다
func myFunctionThird (_ name: String) -> String{
    return "안녕하세요 \(name) 입니다."
}
myFunctionThird("AGO")
