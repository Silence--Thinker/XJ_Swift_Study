//: Playground - noun: a place where people can play

import UIKit

// 协议、扩展

// 协议
// 定义：protocol name: super1, super2 {
//          var name: type { set get }              // 规定属性的需要标注读写权限
//          func name (argument list) -> returnType
//          init name (argument list)
//      }
// 适用范围：类、结构体、枚举

// 协议

protocol someProtocol {             // 协议的定义 和 实现
    var num: Int { get }
}

class Show: someProtocol {
    var so: Int = 10
    
    var num: Int {
        get {
            return so
        }
        set {
            so = newValue + 2
        }
    }
}
var show1 = Show()
show1.num = 200
print(show1.so)

// 结构体协议

protocol xxProtocol {
    mutating func change(age: Int) -> Int  // 结构体中修改了属性，需要在协议中声明mutating
    static func haveChange() -> Void
}


struct Student: xxProtocol {
    var age = 26
    mutating func change(age: Int) -> Int {
        self.age = age + 2
        return self.age
    }
    
    static func haveChange() {
        print("NO change")
    }
}
var stu = Student()
stu.change(age: 32)
print(stu.age)
Student.haveChange()

// 协议组

typealias xxsomeProtocol = xxProtocol & someProtocol // 协议组
typealias xxooProtocol = xxProtocol & someProtocol
class Demo: xxsomeProtocol {
    var value = 20
    var num: Int {
        get {
            return value
        }
        set {
            value = newValue + 2
        }
    }
    
    func change(age: Int) -> Int {
        self.value = age + 2
        return self.value
    }
    
    static func haveChange() {
        print("NO change")
    }
}

var de = Demo()
de.change(age: 32)
print(de.value)
Demo.haveChange()

de.num = 30
print(de.value)

//协议中含有 init 构造器
protocol TheProtocol: class {
    init(x: Int)
}

class Person: TheProtocol {
    var age: Int = 10
    required init(x: Int) {     // 如果是协议中有 构造器方法，那么构造器前面加 required
        self.age = x            // 不然子类无法继承该方法
    }
}

class Father: Person {
}

var p = Person.init(x: 20)

var f = Father.init(x: 30)


// 扩展
// 定义：extension type {  }
// 适用范围：类、结构体、枚举、协议

// 扩展 计算属性

class Transport {
    var scope: String
    var price = 30
    
    init(scope: String) {
        self.scope = scope
    }
}

extension Transport {
    var extProperty: String {           // 扩展只能定义计算属性
        return scope
    }
}
var myTrans = Transport.init(scope: "ludi")
print(myTrans.extProperty)


// 扩展 构造器

extension Transport {
    convenience init(scope: String, price: Int) {
        self.init(scope: scope)
        self.price = price
    }
}
var myTran1 = Transport.init(scope: "陆地", price: 20)
var myTran2 = Transport.init(scope: "海洋")


// 扩展 方法

extension Int {
    func calculate() -> Int {
        return self * 2
    }
}
var x = 3
3.calculate()


// 扩展 下标

extension Int {
    subscript (index: Int) -> Int {
        return self * index
    }
}
print(9[2])
