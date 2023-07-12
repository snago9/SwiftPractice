import UIKit

enum Missmatcherror: Error{
    case namemissmatch
    case nummissmatch
}

func guessMyName(name input: String)
throws {
    if input != "현규"{
        print("Wrong")
        //에러가 났다 무슨 에러가 났을까를 던저 줌
        throw Missmatcherror.namemissmatch
    }
        print("Correct")
}

//에러가 있더라도 처리를 하지 않을때 try? 를 쓴다
//try? guessMyName(name: "임현규")


do{
    try guessMyName(name: "임현규")
} catch {
    //무슨 에러가 났습니다 받아서 출력함
    print("\(error)")
}


//반환형이 있는 return이 있는 메소드
func guessMyNumber(number input: Int)
throws -> Bool {
    if input != 20{
        print("Wrong")
        //에러가 났다 무슨 에러가 났을까를 던저 줌
        throw Missmatcherror.nummissmatch
    }
        print("Correct")
    return true
}


do{
   let receivedValue = try guessMyNumber(number: 20)
} catch {
    //무슨 에러가 났습니다 받아서 출력함
    print("\(error)")
}
