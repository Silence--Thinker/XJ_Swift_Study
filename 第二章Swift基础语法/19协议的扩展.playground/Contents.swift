//: Playground - noun: a place where people can play

import UIKit

// 协议的扩展

/*
 协议的扩展注意点：
 
 1、协议扩展中不能添加 没有实现的方法和属性 error
 2、在Swift 中协议也是一种数据类型，可以通过指定对象的类型为协议，修改上下文
 3、协议也是一种数据类型
 4、可以把那些不希望被重写的方法的定义与实现统统放在协议的扩展中
 5、如果方法在协议中被声明，则该方法是动态方法，如果方法在扩展中定义实现，则该方法为静态方法。
 
 
    上下文是协议类型的情况下。
 在方法没有在协议中声明的情况下，扩展中实现，协议中的方法的调用，如果协议中有默认实现，调用默认实现，
 没有默认实现报错。
 
 如果方法在协议中被声明了，在既有默认实现和重写的情况下，先调用重写，后考虑默认实现。
 
    上下文是实现协议的具体类型情况下
 在方法没有在协议中声明的情况下，扩展中实现，协议中的方法的调用，如果有重写方法优先调用重写方法，
 如果没有重写方法，调用内部实现。
 
 如果方法在协议中被声明了，在既有默认实现和重写的情况下，先调用重写，后考虑默认实现。
 
 */

protocol Coder {
    
    var haveFun: Bool { get set }
    var ownMoney:Bool { get set }
    
}

protocol Swifter {
    
    var codingLevel: Int { get set }
    
}

struct CoderFromA: Coder {
    var name:String
    var haveFun: Bool
    var ownMoney: Bool
}

struct CoderFromB: Coder, Swifter {
    var name: String
    var haveFun: Bool = true
    var ownMoney: Bool = true
    var codingLevel: Int = 3
}

struct CoderFromC: Coder, Swifter {
    var name: String
    var haveFun: Bool = true
    var ownMoney: Bool = true
    var codingLevel: Int = 5
}


// where 限定协议扩展有效条件

extension Coder where Self: Swifter {
    var haveFun: Bool { return true }
    var ownMoney: Bool { return true }
}

struct CoderFromD: Coder, Swifter {
    var name: String
    var haveFun: Bool
    var ownMoney: Bool
    var codingLevel: Int = 6
}


// 扩展 == Equatable 协议

struct BoxInt {
    var intValue: Int
}

extension BoxInt: Equatable {   // Equatable 内部实现了 != 运算符
    
    static func ==(lhs: BoxInt, rhs: BoxInt) -> Bool {
        return lhs.intValue == rhs.intValue
    }

}
let b1 = BoxInt.init(intValue: 3)
let b2 = BoxInt.init(intValue: 5)
b1 == b2
b1 != b2



// 协议的 扩展

// demo_01

protocol SharedString {
    func methodForLog()
    func methodForDecription()
}

extension SharedString {           // 协议的扩展
    func methodForLog() {
        print("O(∩_∩)O")
    }
    
    func methodForDecription() {
        print("--------")
        methodForLog()
        print("--------")
    }
//    var age:Int { get }          // 注意： 不能在协议的扩展中 只声明 方法或者属性 而不实现
}

extension String: SharedString {   // 让 类 遵从协议
}

print("demo——01")
var str: String = "sss"
str.methodForLog()
str.methodForDecription()

// log
//  O(∩_∩)O
//  --------
//  O(∩_∩)O
//  --------


// demo_02

protocol SharedString02 {
    func methodForLog02()
    func methodForDecription02()
}

extension SharedString02 {
    func methodForLog02() {
        print("O(∩_∩)O")
    }
    
    func methodForDecription02() {
        print("--------")
        methodForLog02()
        print("--------")
    }
}

extension String: SharedString02 {
    func methodForLog02() {
        print(self)
    }
}
print("demo——02 String 上下文")
var str02: String = "sss"
str02.methodForLog02()
str02.methodForDecription02()
// log
//  sss
//  --------
//  sss
//  --------

print("demo——02x SharedString02 上下文") // 在Swift 中协议也是一种数据类型，可以通过指定
let string02: SharedString02 = "sss"    // 对象的类型为协议，修改上下文
string02.methodForLog02()
string02.methodForDecription02()
// log
//  sss
//  --------
//  sss
//  --------


// demo_03

protocol SharedString03 {
    func methodForLog03()
}

extension SharedString03 {
    func methodForLog03() {
        print("O(∩_∩)O")
    }
    
    func methodForDecription03() {
        print("--------")
        methodForLog03()
        print("--------")
    }
//    var sss: Int { get }
//    func method03() -> Void        // 注意：协议扩展中不能添加 没有实现的方法和属性 error
}

extension String: SharedString03 {
    func methodForLog03() {
        print(self)
    }
}
print("demo——03 String 上下文")
var str03: String = "sss"
str03.methodForLog03()
str03.methodForDecription03()
// log
//  sss
//  --------
//  sss
//  --------

print("demo——03x SharedString03 上下文")   // 在Swift 中协议也是一种数据类型，可以通过指定
var string03: SharedString03 = "sss"      // 对象的类型为协议，修改上下文
string03.methodForLog03()
string03.methodForDecription03()
// log
//  sss
//  --------
//  sss
//  --------


// demo_04

protocol SharedString04 {
    
}

extension SharedString04 {
    func methodForLog04() {
        print("O(∩_∩)O")
    }
    
    func methodForDecription04() {
        print("--------")
        methodForLog04()
        print("--------")
    }
}

extension String: SharedString04 {
    func methodForLog04() {
        print(self)
    }
}
print("demo——04 String 上下文")
var str04: String = "sss"
str04.methodForLog04()
str04.methodForDecription04()
// log
//  sss
//  --------
//  O(∩_∩)O
//  --------

print("demo——04x SharedString04 上下文")   // 在Swift 中协议也是一种数据类型，可以通过指定
var string04: SharedString04 = "sss"      // 对象的类型为协议，修改上下文
string04.methodForLog04()
string04.methodForDecription04()
// log
//  O(∩_∩)O
//  --------
//  O(∩_∩)O
//  --------



