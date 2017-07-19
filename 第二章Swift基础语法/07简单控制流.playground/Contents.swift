//: Playground - noun: a place where people can play

import UIKit

// 简单的控制流

// if else

var bookPrice: Int = 100;
if bookPrice >= 80 {
    print("有点贵了")
}else {
    print("还是挺便宜的")
}

// guard else

func price(_ price: Int) {
    guard price >= 80 else {
        print("还是便宜的")
        return
    }
    print("有点贵")
}
price(bookPrice);

// switch

switch bookPrice {
case 0...60:
    print("不到60块")
case 60...80:
    print("快80块")
case 80...100:
    print("将近100块")
default:
    print("好贵")
}
var array: Array = ["猫", "狗", "羊"];
let first = array.first!;

switch first {
case "狗":
    print("是狗")
case "羊":
    print("是羊")
default:
    print("是猫")
}











