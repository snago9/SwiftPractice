import UIKit

func Sayname(_ name : String) {
    print("Hi my name is \(name)")
}

Sayname("Hyun Gyu")

//메소드 자체적으로 매개변수 값을 바꿀수가 없다
//메소드의 매게변수를 선언 할때 기본적으로 let으로 설정 되어있기 때문이다

//매개변수로 넣는 값을 바꾸는것을 inout이라 한다
func Sayname2(_ name : inout String) {
    name = "AGO" + name
    print("Hi my name is \(name)")}

//inout 메소드에 들어가는 값은 변경이 가능해야하기 때문에 메소드 안에 바로 변수를 넣으면 안되고
//매게면수에서 한번 선언을 해줘야함
var name = " hello"
//변수 앞에 &를 달아 inout매게변수라는것을 알려줌
Sayname2(&name)


