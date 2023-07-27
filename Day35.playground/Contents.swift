import UIKit

enum friendType {
    case normal, best
}

struct Friend{
    var name : String
    var type : friendType
}

var friendList = [
    Friend(name:"현규", type: .normal),
    Friend(name:"AGO", type: .normal),
    Friend(name:"YENA", type: .best),
    Friend(name:"채원", type: .best)
]

let groupedFriend = Dictionary(grouping: friendList, by: {(friend) -> friendType in
    return friend.type})

print(groupedFriend)
if let normalFriends = groupedFriend[.normal] {
    print(normalFriends)
}
if let bestFriends = groupedFriend[.best] {
    print(bestFriends)
}
