import UIKit

func functionWithTrailingClosure(first: () -> Void,
                                 second: (String) -> Void,
                                 third : (Int)-> Void){
    print(#fileID,#function,#line,"_ ")
    first()
    second("호로롤로")
    third(3)
}

functionWithTrailingClosure {
    print("1번째")
} second: { String in
    print("string: \(String)")
} third: { number in
    print("number: \(number)")
}

