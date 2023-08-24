import UIKit

struct Pet {
    var name : String

}
extension Pet{
    init() {
        name = "하하하"
    }
}
let myCat = Pet()

print("\(myCat)")
