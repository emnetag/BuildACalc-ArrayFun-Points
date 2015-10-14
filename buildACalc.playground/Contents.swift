//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let addition = { (left: Int, right: Int) -> Int in return left + right }

let subtraction : (Int, Int) -> Int = { (left, right) in return left - right }

let multiply : (Int, Int) -> Int = { (left, right) in return left * right }


func divide(left: Int, right: Int) -> Double? {
    if (right != 0) {
        return Double(left / right)
    } else {
        return nil
    }
}

if let result = divide(5, right: 2) {
    print("Something")
}





func mathOp(left l: Int, right r: Int, op: (Int, Int) -> Int) -> Double {
    return Double(op(l, r))
}

var total = mathOp(left: 2, right: 3, op: multiply)

print("Total = \(total)")

func addArr(numbers: Int...) -> Int {
    var total: Int = 0
    for i in numbers { total += i }
    return total
}

func multArr(elements: Int...) -> Int {
    var total: Int = 1
    for e in elements { total *= e }
    return total
}


func count(nums: [Int]) -> Double {
    return Double(nums.count)
}

print("Count = \(count([1, 2, 3, 4, 5]))")

func avg(numbers: [Int]) -> Double {
    var sum: Int = 0
    for number in numbers { sum += number }
    return Double(sum / numbers.count)
}
print("Average = \(avg([2, 4, 6, 8, 10]))")


func funWithArrays(op: ([Int]) -> Double, arr: [Int]) -> Double {
    return op(arr);
}

print("Count = \(funWithArrays(count, arr: [2, 4, 6, 8, 10]))")

print("Average = \(funWithArrays(avg, arr: [2, 4, 6, 8, 10]))")








