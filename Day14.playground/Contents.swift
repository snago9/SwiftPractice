import UIKit

//딕셔너리: 콜렉션 타입
//형태 -> 키:값
var myFriends = ["Friend":"현규",
                 "highschool":"AGO"]

//MyFriends라는 딕셔너리에서 Friend라는 키로 찾겠다
let myBestFriend = myFriends["Friend"]
//MyFriends라는 딕셔너리에서 HighSchool이라는 키로 찾겠다
let highschoolFriend = myFriends["highschool"]
//MyFriends라는 딕셔너리에서 SNS라는 키로 찾겠다 = nil
let snsFriend = myFriends["SNS",default:"없음"]

//Friend키에 값을 변경
myFriends["Friend"] = "Snago"
let myBF = myFriends["Friend"]
//딕셔너리에 키와 값 추가
myFriends["newFriend"] = "철수"
let myNewF = myFriends["newFriend"]
//딕셔너리에 키와 값 추가
myFriends.updateValue("없음", forKey: "GirlFriend")
let myGF = myFriends["GirlFriend"]
//존재하는 키의 값 변경
myFriends.updateValue("YENA", forKey: "Friend")
let mynewBF = myFriends["Friend"]

//비어있는 딕셔너리 생성
let emptyDictionaty : [String : Int] = [:]
let emptyDictionaty2 = [String : Int]()
let emptyDictionaty3 : [String : Int] = Dictionary<String,Int>()

//딕셔너리 element 갯수
myFriends.count

for item in myFriends{
    print("item:",item)
}
