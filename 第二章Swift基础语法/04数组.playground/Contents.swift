//: Playground - noun: a place where people can play

import UIKit

// 数组

// 定义
var a: Array = Array<String>();
a = ["first", "second", "third"];
print(a);

var b: Array = [String]();  // 字面量初始化
var c = ["first", "second", "third"];

var count: Int =  c.count;
if c.isEmpty {
    print("c 数组是 空的")
}else {
    print("c 数组有\(count)个元素");
}

var stre = c.last ?? "";
var strs = c.first!;


// 增 删 改 查 插 替
var exampleOfArray: Array = ["猫", "狗", "羊", "花", "猪", "牛", "鱼", "鸡"];

exampleOfArray.append("鸭");
exampleOfArray += ["鹅"];

var str = exampleOfArray[0];
exampleOfArray[0] = "鹤";

exampleOfArray.remove(at: 0);
exampleOfArray.removeLast();

exampleOfArray.insert("鼠", at: 0);

exampleOfArray[0...3] = ["🐯"]; // 0-3 个替换成一个

exampleOfArray;


// 遍历

for strValue in exampleOfArray {
    print(strValue)
}

for i in 0..<5 {
    print("\(i)  \(exampleOfArray[i])")
}

for strValue in exampleOfArray.enumerated() {
    print("enumerated  \(strValue.offset)    \(strValue.element)");
}








