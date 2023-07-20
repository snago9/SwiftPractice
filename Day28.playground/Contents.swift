import UIKit

var myArray = [3,4,5,1,34,220,348,103,49,20]
//sorted: 변환
var ascendingArray = myArray.sorted()
//sort: 배열자체를 변환
myArray.sort()
//by: > 내림차순으로 정렬
var descendingArray = myArray.sorted(by: >)
myArray.sorted(by: >)
