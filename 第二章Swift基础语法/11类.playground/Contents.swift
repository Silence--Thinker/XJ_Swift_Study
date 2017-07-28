//: Playground - noun: a place where people can play

import UIKit

// 类 结构体 枚举

// 定义

class person {
    // 创建一个类
}
// 定义一个 person 类
var p = person();


struct newStruct {

}
// 定义一个 newStruct 结构体
var struct1 = newStruct();

enum newEnum {
    case IntType
}

var enum1 = newEnum.IntType;

// 属性
class Student {
    
    var age: Int = 10               // 储存属性
    var firstName: String = "xx"
    var lastName: String = "ooo"
    
    lazy var score: Double = 100    // 懒加载，使用时才有值
    
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
    
    func ageUp(up num: Int) -> Int { // 类中的方法 修改属性不需要加 mutating 修饰符
        age += num;                  // 结构体需要加
        return age;
    }
    
    static var descripe = ""        // 类型属性 static
    static var desp: String {
        get{
            return "this is student class"
        }
        set {
            descripe = newValue
        }
    }
    
    var sex: String = "" {               // 属性观察器
        willSet {                   // 属性赋值之前
            print("will set newValue \(newValue)")
        }
        
        didSet {                    // 属性赋值之后
            print("did set oldValue \(oldValue)")
        }
    }
    
    var changeScore: Double {
        get {
            return score
        }
        set(newScore){
            score = newScore
        }
    }
}

let stut = Student()
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
