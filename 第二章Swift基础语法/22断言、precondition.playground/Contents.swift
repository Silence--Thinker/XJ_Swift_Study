//: Playground - noun: a place where people can play

import UIKit

// 断言、precondition

"ssss".characters.count

// 断言
// 不成立就输出信息

func someFunction (_ para: String) -> String? {
    if para.characters.count != 0 {
        return "a + b"
    }
    return nil;
}


assert(someFunction("BBBBB") != nil, "someFunction 返回了空值")
assert(someFunction("SSS") != nil, "someFunction 返回了空值")

someFunction("")


// precondition
// 不成立就输出信息
// precondition 是动态的 执行时才能判断错误

extension Array {
    func ifOutOfBounds(index: Int) {
        precondition((0 ..< endIndex).contains(index), "数组越界")
        print("继续执行")
    }
}

[1, 2, 3].ifOutOfBounds(index: 2)
[1, 2, 3].ifOutOfBounds(index: 4)


