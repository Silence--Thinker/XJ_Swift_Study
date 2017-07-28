//: Playground - noun: a place where people can play

import UIKit

// 方法、下标

// 适用类型：类、结构体、枚举

var d: Double = -12.3
if d.isLess(than: 0) {
    d = Double.abs(d)
}
print(d)

var tempA = [String]()
tempA.append(contentsOf: ["a", "b", "c"])
print(tempA[0])
tempA[1] = "d"



// 类
class Student {
    var score: Int = 0
    
    func sayHello() {                      // 实例方法
        print("Hello")
    }
    class func description () -> String {  // 类方法 修饰词 class
        return "MD 这是一个学生"
    }
    
    subscript (index: Int) -> Int {        // 下标方法
        get {
            return index + score
        }
        set {
            score = newValue + index;
        }
    }
    
    subscript (index: Int, add: Int) -> Int {
        return index + score + add
    }
}

var newStudent = Student()
newStudent.sayHello()
print(Student.description())
print(newStudent[10])
print(newStudent[10, 3])
newStudent[10] = 20;
print(newStudent.score)



// 结构体

struct Person {
    var age: Int = 0
    
    func sayHello() {                        // 实例方法
        print("Hello")
    }
    static func description () -> String {   // 类型方法 修饰词 static
        return "MD 这是一个普通的人"
    }
    
    subscript (index: Int) -> Int {          // 下标方法
        return age + index;
    }
    
    subscript (index: Int, index2: Int) -> Int {
        return age + index + index2
    }
}

var per = Person()
per.age = 20
per.sayHello()
Person.description()
per[10]
per[10, 12]



// 枚举

enum Family {
    case father
    case mother
    
    var age: Int {
        get {
            return 10
        }
    }
    
    func sayHello() {                       // 实例方法
        print("Hello")
    }
    
    static func description () -> String {  // 类型方法 修饰词 static
        return "MD 这是一个家庭成员的描述"
    }
    
    subscript (index: Int) -> Int {
        return age + index
    }
    subscript (index: Int, index2: Int) -> Int {
        return age + index + index2
    }
}

let f = Family.father
f.sayHello()
Family.description()
f[10]
f[10,12]



