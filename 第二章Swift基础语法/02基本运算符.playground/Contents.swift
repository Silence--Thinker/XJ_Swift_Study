//: Playground - noun: a place where people can play

import UIKit

// 基本运算符

// 1.赋值
let a = 10;
let b = a;

// 2. 数值运算符
1 + 2;
2 - 1;
2 * 1;
2 / 1;
"cao" + "xiujin";
5 % 2;
5.1 .truncatingRemainder(dividingBy: 2);
// 8 % 2.3 //error Use truncatingRemainder instead


// 自增、自减
var c = 1;
c += 1;
c -= 1;
// c++ // error has removed in Swift 3
// c-- // error has removed in Swift 3

// 比较运算符
1 < 3
1 > 3
1 == 3
1 != 3
// 1 === 3 // error operator '===' cannot be applied to two 'Int'
1 as? Int == 3; // as? 恒等安全
1 as? Int != 3;
var string = "小明"
string == "haha"

// 三元运算符
var 身高 = 180;
var mingzi = 身高 > 120 ? "xiaom" : "xiaoh"

// 逻辑运算符
true && false
true || false
!true

// 范围
for index in 1...5 {  // 1...5 ==> [1, 5] 1..<5 ==> [1, 5) 1..<5 ==> [1, 5]
    print(index);
}

for index2 in 1..<5 {
    print(index2)
}







