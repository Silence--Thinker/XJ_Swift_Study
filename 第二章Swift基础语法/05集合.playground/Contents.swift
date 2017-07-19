//: Playground - noun: a place where people can play

import UIKit

// 集合

// 定义
var exampleOfSet: Set = ["花", "猪", "牛", "鱼", "牛", "鱼"];
exampleOfSet.isEmpty;
exampleOfSet.count;
exampleOfSet.contains("猪");


// 与 Array 的转化
var exampleOfArray = ["猫", "狗", "羊", "鸡", "羊", "鸡"];
exampleOfSet = Set(exampleOfArray);

// 增 删 改 查 插 取
exampleOfSet.insert("鸭");
exampleOfSet;

var str = exampleOfSet.remove("羊")!;
exampleOfSet;


// 集合运算 
var list1: Set = ["猪", "牛", "鱼", "羊"];
var list2: Set = ["猪", "牛", "猫", "狗"];

list1.isStrictSubset(of: list2);    // 父集合
list1.isDisjoint(with: list2);      // 子集合

// 交集
list1.intersection(list2);

// 差集
list1.subtract(list2);

// 并集
list1.union(list2);

// 补集
var list3: Set = list1.symmetricDifference(list2);
list3;

list1;
// 遍历
for value in list1 {
    print(value)
}

for i in 0..<2 {
    let x = list1[list1.index(list1.startIndex, offsetBy: i, limitedBy: list1.endIndex)!]
    print(x)
}

for enumerated in list1.enumerated() {
    print("enumerated \(enumerated.element)  \(enumerated.offset)")
}







