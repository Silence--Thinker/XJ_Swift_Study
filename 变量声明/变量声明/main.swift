//
//  main.swift
//  变量声明
//
//  Created by Silent on 2017/5/31.
//  Copyright © 2017年 Silence. All rights reserved.
//

import Foundation
/*
    变量的声明 :  var 变量名 : 变量类型 = 变量值;
                var 变量名 = 变量值;              var 变量名;
 
    常量的声明 :  let 常量名 : 常量类型 = 常量值;      swift中常量值只能赋值一次
                let 常量名 = 常量值;              let 常量名;
 */

var myVariable1 : int_fast64_t = 56;
var myVariable2 = 34;

let myConstant = 24;
//myConstant = 34
//Cannot assign to value: 'myConstant' is a 'let' constant

let constValue : Float = 4;

print("\(myVariable1) \(myVariable2) \(myConstant) \(constValue)");

// 字符串定义
let label = "The width is";
let width = 94;
let labelWidth = label + " " + String(width);
//Binary operator '+' cannot be applied to operands of type 'String' and 'Int'
print(labelWidth);

let apples = 3;
let oranges = 5;
let appleSummary = "I have \(apples) apples";
let orangeSummary = "I have \(oranges) oranges";

let number : Float = 42;
let infoString = "peter is \(number) tall"
print(infoString);

// 数组 与 字典定义
var shoppingList = ["catfish", "watter", "tulips", "blue paint"];
shoppingList[1] = "bottle of watter";
print(shoppingList);

var occupations = [
    "Malcolm" : "Captain",
    "Kaylee" : "Mechanic",
];
occupations["Jayne"] = "Public Relation";
var tempString1 : String? = occupations["Malcolm"];
var tempString2 : String? = occupations["ssds"];
print(occupations);
print(tempString1 ?? "abc");
print(tempString2 ?? "bcd");


// 空数组
let emptyArray = [String]();
let emptyDict = [String: Float]();
shoppingList = [];
occupations = [:];










