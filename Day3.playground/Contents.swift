import UIKit

enum School {
    case elementary, middle, high
}

//your school 안에 case high에 들어있는값을 넣었음
let yourSchool = School.high
print("yourschool: \(yourSchool)")

enum Grade : Int {
    case first = 1
    case second = 2
}
//rawValue를 통해 second case 안에 들어 있는 값을 들고옴
let yourGrade = Grade.second.rawValue
print("Grade: \(yourGrade)")

enum SchoolDetail {
    case elementary(name:String)
    case middle(name:String)
    case high(name:String)
    
    // getName 메소드를 설정해 case 전체가 아닌 안에 데이터만 불러오는 상황을 만들려고함
    // -> 반환 표시
    func getName() -> String{
        switch self{
        case .middle(let name):
            return name
        case let .elementary(name):
            return name
        case .high(let name):
            return name
        }
    }

}

//평소처럼 불러오면 case 전체를 그대로 불러온다
let YourHighschoolname = SchoolDetail.high(name:"aes")
print("YourHighschoolname: \(YourHighschoolname)")
//정의한 메소드를 변수 뒤에 붙혀서 사용하여 안에 데이터값만 출력
print("YourHighschoolname: \(YourHighschoolname.getName())")
