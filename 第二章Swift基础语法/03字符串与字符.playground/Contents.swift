//: Playground - noun: a place where people can play

import UIKit

// 字符串与字符

// 定义
let dontModifyMe: String = "请不要修改我"; // 常量
var modifyMe: String = "你可以修改我";     // 变量

// 字符串 拼接
let firstMsg: String = "Swift 挺好的";
let secondMsg: String = "语法也挺奇怪的";
let sumMsg = firstMsg + " , " + secondMsg;

// 判断相等
if firstMsg == secondMsg {
    print("firstMsg 等于 secondMsg");
}else {
    print("firstMsg 不等于 secondMsg");
}

// 与OC NSString 转化 关键词 as
var ocString: NSString = "oc string";
var swiftString: String = "Swift string";

var string1: NSString = swiftString as NSString;
var string2: String = ocString as String;
var stirng3: String = String(ocString);

// 字符截取 获取指定下标的字符
var str: String = "Hello";
str[str.index(str.startIndex, offsetBy: 3)];

str.index(before: str.endIndex);
str.index(after: str.startIndex);
str[str.index(str.startIndex, offsetBy: 4, limitedBy: str.endIndex)!];

// 字符串range
let num: String = "12.34";
let deRange = num.range(of: ".");
let wholeNumber = num[num.startIndex ..< deRange!.lowerBound];
let other = num[deRange!.lowerBound ..< num.endIndex];
print(wholeNumber);

// 增 、删、改、替
var strS = "this is a string";
strS.append(" haha");
strS.append("c");

let start = strS.index(strS.startIndex, offsetBy: 2);
let end = strS.index(strS.startIndex, offsetBy: 4);
strS.removeSubrange(start...end);

let atIndex: String.Index = strS.index(strS.startIndex, offsetBy: 2);
strS.remove(at: atIndex);
print(strS);

strS.replaceSubrange(start...end, with: "UUUUU");









