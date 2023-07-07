import UIKit

//String 형식의 클로저
let Myname: String = {
    //myname 으로 반환하는값
    return "임현규"
}()

print(Myname)

//String 을 매개변수로 받아서 return 값을 String으로 뱉는 클로저
let MySecondName : (String) -> String = {(name: String) -> String in
    return "myname \(name)"
}
print(MySecondName("AGO"))


//반환하는값 즉 return이 없으면 Void로 설정하여 사용 가능
let MyNameLogic : (String) -> Void = {(name:String) in
    print( "myname \(name)")
    
}
MyNameLogic("AGO")
