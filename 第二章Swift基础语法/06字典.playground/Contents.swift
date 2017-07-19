//: Playground - noun: a place where people can play

import UIKit

// 字典

// 定义
var exampleOfDictionary: Dictionary = Dictionary<String, Int>();
exampleOfDictionary = [String:Int]();
exampleOfDictionary = ["年龄": 26, "身高":171, "体重":150];

exampleOfDictionary.isEmpty;
exampleOfDictionary.count;

// 增 删 改 查 插 取

exampleOfDictionary["工资"] = 100;
var oldValue1 = exampleOfDictionary.updateValue(10, forKey: "工资");
exampleOfDictionary;

exampleOfDictionary["工资"] = nil;
var oldValue2 = exampleOfDictionary.removeValue(forKey: "体重")!;
exampleOfDictionary;


// 遍历

for (key, value) in exampleOfDictionary {
    print("\(key) \(value)")
}

for keyItem in exampleOfDictionary.keys {
    print("\(keyItem)  \(exampleOfDictionary[keyItem]!)")
}


for enumerated in exampleOfDictionary.enumerated() {
    print("\(enumerated.offset) \(enumerated.element.key)  \(enumerated.element.value)")
}






