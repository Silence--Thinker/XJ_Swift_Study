//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print(str);

print("a", "b", "c ", separator: " * ", terminator: "end")
print();
// 基本数据类型
// 整数
let max = Int8.max;
let min = Int8.min;
let umax = UInt8.max;
let umin = UInt8.min;

// 浮点数
let float :Float32 = Float32.maximum(23.0, 24.3);
let double :Double = Double.minimum(24.3, 23.0);

// Bool 类型
var x :Bool = true;
if x {
    let num = 1;
}
if x {
    let num = -1;
}

// 元组类型
let message = ("小明", 9, "三年级二班");
let name = message.0;
let age = message.1;
let grade = message.2;

let message2 = (name:"xiujin", age:26, grade:"programer");
let name2 = message2.name;
let age2 = message2.age;
let grade2 = message2.grade;

let (justName, _, _) = message2;
let (_, justAge, _) = message2;
print(justAge);

// 可选类型
var ageS:Int?;      // error  var ageS:Int ?; 空格error
ageS = Int("26");   // 构造器
print(" age is \(ageS!)");
print(" age is \(ageS!)");      // !符号解包

ageS = Int("xiujin");
print(" age is \(ageS ?? -1)"); // ?? 操作符自带解包功能

ageS = Int("嘿嘿嘿") ?? -1;
print("age is \(ageS!)");

var ageJ:Int? = Int("26");
if let jie = ageJ {     // swift 安全解包 if let x = var{ xx }
    print(jie);         // 代码块 内安全使用 可选类型
}

func findA() {
    var ageJ:Int? = Int("28"); // swift 安全解包 guard let x = var { return; } xx
    ageJ = Int("284");         // 代码块外 安全使用 可选类型
    guard let jie = ageJ else {
        return;
    }
    print(jie);
}
findA();

var vari = 1;
vari += 1;








