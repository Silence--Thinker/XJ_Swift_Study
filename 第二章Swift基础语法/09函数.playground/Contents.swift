//: Playground - noun: a place where people can play

import UIKit

// 函数

// 定义 
// func 函数名 (函数外部参数名(可省略) 内部参数名: 参数类型) -> 返回类型 { }

func exampleOfFunction(parameter: String) -> String {
    let sayHello = "say Hello to " + parameter
    return sayHello
}

exampleOfFunction(parameter: "xiaoMing")

func plus(a: Int, b: Int) ->Int {
    return a + b;
}

func mult(a: Int, b: Int) ->Int {
    return a * b;
}

func someFunction(parameter: (Int, Int) ->Int, a: Int, b: Int) {
    print("\(parameter(a, b))");
}

someFunction(parameter: plus, a: 2, b: 3)
someFunction(parameter: mult, a: 6, b: 6)


// 可变参数，可变参数必须是最后一个参数
func arithmeticMean(numbers: Double...) -> Double {
    var sum: Double = 0
    
    for value in numbers {
        sum += value
    }
    return sum / Double(numbers.count)
}

arithmeticMean(numbers: 1, 2, 4, 6)

print(arithmeticMean(numbers: 1, 2, 4, 6))
print(arithmeticMean(numbers: 1, 2, 3, 4))


// 函数中不能直接更改参数值
func exampleOfString(parameter: String) -> String {
    // parameter = "string" + parameter; error
    var value: String = parameter + "  string";
    return value;
}

var name: String = "xiaoMing"
exampleOfString(parameter: name)
name

// 如果需要在函数中修改 入参 参数的值，需要在函数的参数类型前声明 inout
func exampleString(parameter: inout String) -> String {
    parameter = "string  " + parameter
    return parameter;
}

var name2: String = "xiaoHong"

exampleString(parameter: &name2)
name2;

// 重载操作符
/*
struct BoxInt {
    var intValue: Int
}

func ==(1hs: BoxInt, 2hs: BoxInt) -> Bool {
    return 1hs.intValue == 2hs.intValue;
}

let b1 = BoxInt(intValue: 2);
let b2 = BoxInt(intValue: 4);
*/





