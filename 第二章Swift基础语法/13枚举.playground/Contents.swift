//: Playground - noun: a place where people can play

import UIKit

// 枚举

// 定义
enum DataType {
    case IntType (Int)
    case DoubleType (Double)
}


enum Optional<T> {
    case None
    case Some(T)
}

let str1: String? = nil
let str2 = Optional<String>.None

let str3: String? = "Hello"
let str4: Optional = Optional<String>.Some("Hello")

var showStr = str3!

var showStr2 = ""

switch str4 {
    case .None: print("异常")
    case .Some(var value): showStr2 = value
}

// 属性

enum Turn {
    case left
    case right
    
    var reminder: String {
        // 枚举内部访问case
        switch self {
        case .left:
            return "左转"
        case .right:
            return "右转"
        }
    }
    var error: String {
        get {
            return self.reminder
        }
        set (newError) {
            if newError == "左" {
                self = .left
            }else {
                self = .right
            }
        }
    }
    
    mutating func setTurn(_ turn: String) -> Turn {
        self.error = turn
        return self
    }
}

var turn: Turn = .left
print(turn.reminder)

turn.error = "右"
print(turn.reminder)
print(turn.setTurn("左"));


