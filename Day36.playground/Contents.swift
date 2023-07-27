import UIKit

protocol Talking {
    var saying : String { get set}
    func SayHi()}

class BestTalk : Talking {
    var saying: String = "best talk"
    func SayHi() {
        print("Say Hi")}}

class OldTalk : Talking {
    var saying: String = "old talk"
    func SayHi() {
        print("Say long time no see")}}

class Friend{
    //dependencies
    var talkProvider : Talking?
    var saying : String?{
        get{
            talkProvider?.saying
        }
    }
    init(_ talkProvider : Talking){
        self.talkProvider = talkProvider
    }
    func SayHi(){
        talkProvider?.SayHi()
    }
}
let myBestFriend = Friend(BestTalk())
myBestFriend.SayHi()
myBestFriend.saying
let myOldFriend = Friend(OldTalk())
myOldFriend.SayHi()
myOldFriend.saying

