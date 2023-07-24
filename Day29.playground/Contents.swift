import UIKit

struct Mypet{
    var title : String = "타이틀 없음"
    //private (set)은 메소드 외부에서 참조가 되지 않게 하기 위해 사용하는 키워드
    private (set) var name = "이름없음"
    
    mutating func setname(to newName: String){
        self.name = newName
    }
}

var myPet = Mypet()
myPet.title = "타이틀"
myPet.title
//myPet.name = "임현규"
myPet.setname(to: "AGO")
myPet.name

