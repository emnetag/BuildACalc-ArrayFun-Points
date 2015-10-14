//
//  main.swift
//  buildACalc
//
//  Created by user on 10/12/15.
//  Copyright © 2015 user. All rights reserved.
//

import Foundation

let addition = { (left: Int, right: Int) -> Int in return left + right }

print("Adding 10 and 20 = \(addition(10, 20))" + "\n")

let subtraction : (Int, Int) -> Int = { (left, right) in return left - right }

print("Subtracting 20 from 100 = \(subtraction(100, 20))" + "\n")

let multiply : (Int, Int) -> Int = { (left, right) in return left * right }

print("If you multiply 5 by itself, you get \(multiply(5, 5))" + "\n")

func divide(left l: Int, right r: Int) -> Double? {
    if (r != 0) {
        return Double(l) / Double(r)
    } else {
        return nil
    }
}

if var result = divide(left: 5, right: 2) {
    print("Divide 5 by a non-zero like 2 and you get \(result)" + "\n")
}

print("Divide by zero and you get \(divide(left: 5, right: 0))" + "\n")

func mathOp(left l: Int, right r: Int, op: (Int, Int) -> Int) -> Double {
    return Double(op(l, r))
}

print("Now let's have some fun with Arrays..." + "\n")

let testArr1 = [1, 3, 5, 7, 9]
let testArr2 = [2, 4, 6, 8, 10, 12, 14]

func addArray(numbers: [Int]) -> Int {
    var total: Int = 0
    for i in numbers { total += i }
    return total
}

print("Sum of the elements in \(testArr1) = \(addArray(testArr1))" + "\n")


func multiplyArray(elements: [Int]) -> Int {
    var total: Int = 1
    for e in elements { total *= e }
    return total
}

print("Multiplying elements in \(testArr2) results in \(multiplyArray(testArr2))" + "\n")

let count = { (nums: [Int]) -> Int in return nums.count }

print("Number of elements in \(testArr2) is \(count(testArr2))" + "\n")


func avg(numbers: [Int]) -> Double {
    var sum: Int = 0
    for number in numbers { sum += number }
    return Double(sum / numbers.count)
}

print("The average value in \(testArr1) is \(avg(testArr1))" + "\n")

func arrOperation(op: ([Int]) -> Double, numArray: [Int]) -> Double {
    return op(numArray)
}

print("To prove my point, the average value in \(testArr1) is \(arrOperation(avg, numArray: testArr1))" + "\n")

// POINTS 

let tuplePoint1 = (1,2)
let tuplePoint2 = (3,4)

func addPoints(point1: (x: Int, y: Int), point2: (x: Int, y: Int)) -> (x: Int, y: Int) {
    return (point1.x + point2.x, point1.y + point2.y)
}

func subPoints(point1: (x: Int, y: Int), point2: (x: Int, y: Int)) -> (x: Int, y: Int) {
    return (point1.x - point2.x, point1.y - point2.y)
}


print("Adding (1, 2) and (3, 4) yields \(addPoints(tuplePoint1, point2: tuplePoint2))" + "\n")
print("Subtract (3, 4) from (1, 2) and... \(subPoints(tuplePoint1, point2: tuplePoint2))")



