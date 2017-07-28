//: Playground - noun: a place where people can play

import UIKit

// 结构体

// 定义

struct newStruct {
    
}

let new = newStruct();


struct Student {
    var age: Int = 10               // 储存属性
    
    var firstName: String = "xx"
    var lastName: String = "ooo"
    
    var score: Double = 100
    lazy var height:Double = 171    // 懒加载，使用时才有值
    
    var fullName: String {          // 计算属性
        get {
            return "\(firstName) \(lastName)"
        }
        set (name){
            let range = name.range(of: " ");
            if range == nil {
                firstName = ""
                lastName = name
            } else{
                firstName = name[name.startIndex ..< range!.lowerBound]
                lastName = name[range!.upperBound ..< name.endIndex]
            }
        }
    }
    
    // 结构体中的方法 修改属性需要加 mutating 修饰符
    mutating func ageUp(up num: Int) -> Int {
        age += num;
        return age;
    }
    
    static var descripe = ""        // 类型属性 static
    static var desp: String {
        get {
            return "this is student class"
        }
        set {
            descripe = newValue
        }
    }
    
    var sex: String = "" {               // 属性观察器
        willSet {                        // 属性赋值之前
            print("will set newValue \(newValue)")
        }
        
        didSet {                         // 属性赋值之后
            print("did set oldValue \(oldValue)")
        }
    }
    
    var changeScore: Double {           // 如果score是lazy修饰不能在get直接返回score
        get {
            return score
        }
        set {
            score = newValue
        }
    }
}

var stut = Student()
stut.age = 26
stut.firstName = "xiao"
stut.lastName = "Ming"
print(stut.fullName)

stut.fullName = "xiao Hong"
print("fist \(stut.firstName) last \(stut.lastName)  \(stut.fullName)")


stut.changeScore = 80;
print("\(stut.score)  \(stut.changeScore)")

// 方法
stut.ageUp(up: 2)
stut.ageUp(up: 1)

// 类型属性
Student.descripe
Student.desp = "this the student ma ???? "
print(Student.descripe)

// 属性观察器
stut.sex = "Boy"
stut.sex = "Girl"

// sizeof  sizeofValue ==>>> MemoryLayout<T>.size MemoryLayout.size(ofValue:)
let zz = MemoryLayout<Student>.size
let xx = MemoryLayout.size(ofValue: stut)