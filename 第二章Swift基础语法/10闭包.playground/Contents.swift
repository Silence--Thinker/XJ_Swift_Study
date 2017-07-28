//: Playground - noun: a place where people can play

import UIKit

// 闭包  是一个引用类型

// 定义 
// { (参数列表) -> 返回值类型 in   语句组  }
// 闭包表达式的运算结果是一种函数类型，闭包可以作为表达式、函数参数和函数返回值


// 嵌套函数
func someFunction(op: String) -> (Int, Int) -> Int {
    func plus(a: Int, b: Int) -> Int {
        return a + b
    }
    
    func mult(a: Int, b: Int) -> Int {
        return a * b
    }
    var result: (Int, Int) ->Int;
    
    switch op {
    case "*":
        result = mult
    default:
        result = plus
    }
    
    return result
}

let swift: (Int, Int) ->Int = someFunction(op: "+");
let resulet = swift(3, 4)

// 闭包的转换
func someFuncitonForClosure(op: String) -> (Int, Int) -> Int {
    var result: (Int, Int) ->Int;
    
    switch op {
    case "*":
        result = {(a: Int, b: Int) -> Int in
            return a * b
        }
    default:
        result = {(a: Int, b: Int) -> Int in
            return a + b
        }
    }
    return result;
}

let swift2: (Int, Int) ->Int = someFuncitonForClosure(op: "*")
let result2 = swift2(2, 3)

// 闭包的简化 Swift 可以根据上下文推断闭包的参数类型和返回值类型

var result3: (Int, Int) ->Int;

result3 = {(a: Int, b: Int) -> Int in
    return a * b
}

// 1、省略参数和返回值类型
result3 = {(a, b) in
    return 3 + 4;
}

// 2、只有一条语句可以省略return
result3 = { (a, b) in a+b }

// 3、参数名可以缩写 参数名缩写后便不需要 参数列表和in 关键字
result3 = { $0 + $1 }
result3 = { $0 * $1 }

let x = result3;
let y = result3;



// 函数的参数是闭包

func example(parameter: String, completion: (_ a: Int, _ b: Int) -> Void) -> Void {
    
    switch parameter {
    case "1":
        completion(2, 3)
    default:
        print("NOt a 1")
    }
}
example(parameter: "1", completion: {(a: Int, b: Int) ->Void in  print("\(a * b)") });


// 如果闭包是函数的最后一个参数可以 将闭包写在函数后面,注：只能调用时使用 （尾随闭包）

example(parameter: "1") { (a: Int, b: Int) in
    print("\(a + b + b + a)")
}
example(parameter: "1") {
    print("\($0 + $1 + $1 + $0)")
}

// demo
let digitNames = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510, 234, 23]

let string = numbers.map { (number) -> String in
    var output: String = ""
    var num = number
    while num > 0 {
        output = digitNames[num % 10]! + output
        num /= 10;
    }
    return output
}
print(string)
