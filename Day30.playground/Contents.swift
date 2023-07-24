import UIKit

let MyfriendsArray : [String] = ["현규","AGO","YENA","채원"]

MyfriendsArray.forEach{ aFriend in
    print(aFriend)
}

for (index, aFriend) in MyfriendsArray.enumerated(){
    print("index: \(index), item: \(aFriend)")
}
