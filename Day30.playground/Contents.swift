import UIKit

let MyfriendsArray : [String] = ["현규","AGO","YENA","채원"]
var freindsWithIndex: [String] = []

MyfriendsArray.forEach{ aFriend in
    print(aFriend)
}

for (index, aFriend) in MyfriendsArray.enumerated(){
    print("index: \(index), item: \(aFriend)")
    freindsWithIndex.append("\(index)번 \(aFriend)")
}
