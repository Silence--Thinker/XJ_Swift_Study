//: Playground - noun: a place where people can play

import UIKit

// 继承

// 适用范围:类

class Transport {
    var scope = ""
    func move()  {
        print("交通工具在移动")
    }
    
    final func xxx() {                // 方法不能被子类重写
        print("不能被重写的方法")
    }
}

final class Car: Transport {          // 不能被继承的类 final 修饰词
    
    var wheel = "卡迪拉克"
    override func move() {
        print("汽车move")
    }
    
    func superMove()  {
        super.move()
    }
    
    func mmm()  {
        print("xxxxx")
    }
}

//class MyCar: Car {                   // error final
//    
//}

var myCar = Car()
myCar.scope = "陆地"
myCar.move()
myCar.superMove()
myCar.xxx()


let some = ["1", "2", "3"]
let str = some.joined(separator: "5")
print(str)

