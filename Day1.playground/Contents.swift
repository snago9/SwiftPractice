import UIKit

var isDarkMode : Bool = true

//true를 나타냄
if (isDarkMode == true){
    print("dark mode")
}
else{
    print("not dark mode")
}

//false를 나타냄
//Swift는 괄호를 없애도 된다
if isDarkMode != true{
<<<<<<< HEAD
    print("not dark mode")
}
else{
    print("dark mode")
=======
    print("dark mode")
}
else{
    print("not dark mode")
>>>>>>> c97b2617d98c5ddb24a10a71d09559b57ca25f43
}

//!변수 를 하면 not으로 취급
if !isDarkMode {
    print("not dark mode")
}
else{
    print("dark mode")
}

//?가 해당 하는 조건이라면 ? 앞에 조건문, 해당하지 않는다면 (: 이 else 역할) 뒤에 조건문을 실행
var title : String = isDarkMode == true ? "dark mode" : "not dark mode"
print("darkmode? = \(title)")
