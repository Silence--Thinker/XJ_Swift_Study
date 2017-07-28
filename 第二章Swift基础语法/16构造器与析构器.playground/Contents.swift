//: Playground - noun: a place where people can play

import UIKit

// 构造器、析构器

// 构造器 适用范围：类、结构体
// 析构器 适用范围：类

/*
 1、所有的构造器都叫 init
 2、在任何构造器完成时，必须保证所有的属性都被初始化，即便可选型属性的值是nil，也算它有值
 3、
*/


// 类中
/*
 1、当所有属性都有初始值并且类中没有定义构造器时，会有一个隐藏的无参构造器
 2、有两种构造器：便捷构造器、指定构造器
 3、一个类不用父类的指定构造器，新的指定构造器必须调用父类的指定构造器
 4、如果类中没有实现任何指定构造器，那么将继承父类中的所有指定构造器
 5、子类中创建了自己的指定构造器后，将不能再使用父类中的构造器，子类指定构造器需要调用父类的指定构造器
 6、如果构造器前加上了 required 关键字，那么子类必须实现这个构造器
 7、允许失败的构造器
 8、匿名构造器
*/
class Person {
    var name: String = ""
    var age: Int = 0
    
//    init() {                  // 隐藏构造器 所有的构造器
//    }
}
var per = Person()


class Transport {
    var scope = ""
    
    func move() {
        print("交通工具在移动")
    }
    
    init() { }                 // 无参数指定构造器
    
    init(str: String) {
        self.scope = str       // 一个参数的指定构造器
    }
}

class Car: Transport {

}
var myCar = Car()
var myNewCar = Car(str: "陆地")

class CarS: Transport {
    var whell = "卡迪拉克"
    init(scope: String, wheel: String) {
        super.init()
        self.scope = scope
        self.whell = wheel
    }
    deinit {
        print("---deinit---")
    }
}

var iCar = CarS.init(scope: "陆地", wheel: "HHH")


// 匿名构造器
let button: UIButton = {
    
    var button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    button.backgroundColor = UIColor.white
    return button
}()

// 结构体中
/*
 当所有属性都有默认值并且结构体中没有定义构造器时，就会得到一个默认的将所有属性作为参数的构造器
 */

struct Example {
    var str: String = "Hello xiaoM"
    var value: Int = 10
    
//    init(str: String, value: Int) {
//        self.str = str
//        self.value = value
//    }
}

var example = Example(str: "", value: 20)
print(example)


// 析构器
// 1、类中只能有一个析构器，并且析构器没有参数



