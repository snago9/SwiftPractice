import UIKit

//옵셔널 은 값이 있는지 없는지 모르는 상태
var SomeVariable : Int? = nil

//만약 someVariable이 nil이라면(비어있다면) 그 안에 90을 넣겠다
if SomeVariable == nil{
    SomeVariable = 90
}
print("SomeVariable=\(SomeVariable)")

//언래핑이란 감싸져있는것을 벗기는 것
//somevariable에 값이 있다면 otherVariable에 넣어서 쓰겠다
if let OtherVariable = SomeVariable {
    print("Unwrapping Successful: \(OtherVariable)")
    
}
else{
        print("No variable")
}

SomeVariable = nil
//SomeVariable에 값이 없으면 이 값으로 넣겠다
let myValue = SomeVariable ?? 10
print("myValue: \(myValue)")


var FirstValue : Int? = 30
var SecondValue : Int? = 50
//그대로 출력하면 unwrapped 상태
print("firstvalue: \(FirstValue)")
print("secondvalue: \(SecondValue)")


unwrap(parameter: FirstValue)
unwrap(parameter: SecondValue)

//unwrapped한 값을 보여주는 함수
func unwrap(parameter: Int?){
    print("unwrap() called")
    //값이 없으면 리턴한다는것을 표시
    guard let unWrappedParam = parameter else{return}
    print("unwrapped param: \(unWrappedParam)")
}
