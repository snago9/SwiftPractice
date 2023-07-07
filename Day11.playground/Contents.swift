import UIKit


//completion이라는 클로저를 매개변수로 가지는 메소드 정의
func SayHi(completion: () -> Void){
    print("SayHi() called")
    sleep(2)
    completion()
    
}
//쉽게 말해 "2초지남"의 표시는 메소드 호출이 끝났다는것을 알린다고 보면 편하다

//밑에는 여러가지 클로저를 매개변수를 가지는 메소드 호출 방법이다
SayHi(completion: {
    print("2초 지남")
})
SayHi() {
    print("2초 지남 2")
}
SayHi{
    print("2초 지남 3")
}

//매개변수로서 매개변수를 반환하는 클로저
func SayHiWithName(completion: (String) -> Void){
    print("SayHiWithNmae() called")
    sleep(2)
    completion("Swift 공부중")
}

SayHiWithName(completion: {(comment: String) in
    print("2초지나고 난후의 comment:",comment)
})
SayHiWithName(completion: {comment in
    print("2초지나고 난후의 comment 2:",comment)
})

SayHiWithName{comment in
    print("2초지나고 난후의 comment 3:",comment)
}
 
SayHiWithName{
    print("2초지나고 난후의 comment 4:",$0)
}

//매개변수로서 여러개의 매개변수를 반환하는 클로저
func SayHiWithFullName(completion: (String,String) -> Void){
    print("SayHiWithFullName() called")
    sleep(2)
    completion("Swift 공부중","오늘도")
}

SayHiWithFullName{first,second in
    print("first comment: \(first), Second comment: \(second)")
}
SayHiWithFullName{
    print("first comment: \($0), Second comment: \($1)")
}

//클로저를 옵셔널로 사용할 경우
func SayHiOptional(completion: (() -> Void)? = nil){
    print("SayHiOptional() called")
    sleep(2)
    completion?()
}

//옵셔널로 받은 클로저의 메소드를 호출은 하되 컴플리션 이벤트를 터트리지 않을때 사용
SayHiOptional()
//이벤트를 실행을 할때
SayHiOptional(completion: {
    print("2초 지남")
})

//Int를 받아서 String을 리턴값으로 하는
func Transform(number:Int) -> String{
    return "숫자 \(number)"
}
