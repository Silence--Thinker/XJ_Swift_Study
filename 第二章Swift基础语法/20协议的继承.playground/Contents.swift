//: Playground - noun: a place where people can play

import UIKit

// 协议的继承

protocol SearchIntArrayMax {
}

extension SearchIntArrayMax where Self: Collection, Self.Generator.Element == Int {
    func showMax () -> String {
        if let max = self.max() {
            return "\(max)"
        }
        return "无最大值"
    }
}

extension Array: SearchIntArrayMax {}

[3, 2, 1].showMax()
[].showMax

protocol CanCompareMax: SearchIntArrayMax {

}

extension CanCompareMax where Self: Collection, Self.Generator.Element == Int {
    func compareMax(other: Self) -> String {
        switch (self.showMax(), other.showMax()) {
            case ("无最大值", _): fallthrough
            case (_ , "无最大值"): return "无最大值"
            case let (a, b) where a == b: return a
        
        default:return "不相等"
            
        }
    }
}

extension Array: CanCompareMax {}

[3, 2, 1].showMax()
[1, 3, 2].compareMax(other: [1, 1, 1])
[1, 3, 2].compareMax(other: [1, 3, 1])
