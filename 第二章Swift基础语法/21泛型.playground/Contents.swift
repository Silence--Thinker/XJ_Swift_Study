//: Playground - noun: a place where people can play

import UIKit

// 泛型

// 节点泛型

func show (para: Int) {
    print("Hello \(para)")
}

func show (para: String) {
    print("Hello \(para)")
}

func show (para: Double) {
    print("Hello \(para)")
}

func show<T> (para: T) {    // 节点泛型
    print("Hello \(para)")
}

show(para: "s")
show(para: [1, 2])

// 泛型协议

protocol SomeProtocol {
    associatedtype Element
    func elementMethod1 (element: Element)
    func elementMethod2 (element: Element)
}

struct TestStruct: SomeProtocol {
    func elementMethod1(element: String) {
        print("elementMethod1:\(element)")
    }
    
    func elementMethod2(element: String) {
        print("elementMethod2:\(element)")
    }
}

protocol CanCompare {
    func isBigger (other: Self) -> Bool
}

struct BoxInt: CanCompare {
    var intValue: Int
    func isBigger(other: BoxInt) -> Bool {
        return self.intValue > other.intValue
    }
}

BoxInt.init(intValue: 3).isBigger(other: BoxInt.init(intValue: 2))

// 泛型对象

struct TheStruct<T: Comparable> {
    func elementMethod1(element: T) {
        print("elementMethod1:\(element)")
    }
    
    func elementMethod2(element: T) {
        print("elementMethod2:\(element)")
    }
}

let test = TheStruct<Int>()
test.elementMethod1(element: 1)
let test2 = TheStruct<Double>()
test2.elementMethod2(element: 23)
let test3 = TheStruct<String>()
test3.elementMethod2(element: "hahhah")

// 泛型方法

struct SecondStruct {
    func elementMethod1<T: Comparable> (element: T) {
        print("elementMethod1:\(element)")
    }
    
    func elementMethod2<T: Comparable> (element: T) {
        print("elementMethod2:\(element)")
    }
}

let seconde = SecondStruct()
seconde.elementMethod2(element: 1)
seconde.elementMethod2(element: "sssss")
seconde.elementMethod2(element: 12.3)

// where 关键字

protocol SomeP {
    associatedtype OwnElement
    func elementMethod1(element: OwnElement)
    func elementMethod2(element: OwnElement)
}

extension SomeP where Self: Collection {
    func showCount()  {
        print(self.count)
    }
}

extension Array: SomeP {
    func elementMethod1(element: Int) {
        print("elementMethod1:\(element)")
    }
    ;
    func elementMethod2(element: Int) {
        print("elementMethod2:\(element)")
    }
}

[1, 2, 3].showCount()

extension SomeP where OwnElement: SignedNumber {
    func showElement() {
//        print(OwnElement)
        print("sddddd")
    }
}

[1,2,3].showElement()


// 泛型特化

func and<T>(_ first: T, _ second: T) {
    print(first, second, separator: "+", terminator: "")
    print()
}
and(2, 3)
and("a", "b")
//print("sssss")

