//: Playground - noun: a place where people can play

import UIKit

// 类型检查和类型转换

class Transport {
    var scope: String
    init(scope: String) {
        self.scope = scope
    }
}

class Car: Transport {

    var type: String = "大巴"
    init(scope: String, type: String) {
        super.init(scope: scope)
        self.type = type
    }
}

class Airplance: Transport {
    var compony: String = "东方航空"
    init(scope: String, compony: String) {
        super.init(scope: scope)
        self.compony = compony
    }
}


var journey = [Car.init(scope: "陆地", type: "大巴"),
               Car.init(scope: "陆地", type: "公交车"),
               Airplance.init(scope: "航空", compony: "东方航空"),
               Car.init(scope: "泸定", type: "出租车")]

var carNum = 0
var airNum = 0

for tra in journey {
    if tra is Car {
        carNum += 1
    } else if tra is Airplance {
        airNum += 1
    }
}
print(carNum)
print(airNum)


for tra in journey {

    if let car = tra as? Car {
        print(car.type)
    }else if let air = tra as? Airplance {
        print(air.compony)
    }
}


let a = Array("abc".characters)
let d1 = 12
let d2 = 12.3
let iTos = String.init(d1)
let dTos = "\(d2)"




		
