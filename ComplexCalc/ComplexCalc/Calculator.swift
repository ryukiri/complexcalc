//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    public func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    func add(_ args: [Int]) -> Int{
        var sum = 0
        for i in args {
            sum += i
        }
        return sum
    }
    
    func add(lhs : (Int, Int), rhs : (Int, Int)) -> (Int, Int) {
        var sum : (Int, Int) = (0, 0)
        sum.0 = lhs.0 + rhs.0
        sum.1 = lhs.1 + rhs.1
        return sum
    }
    
    func add(lhs: [String : Int], rhs: [String : Int]) -> [String : Int] {
        var sum : [String : Int] = ["x": 0, "y": 0]
        sum["x"]! = lhs["x"]! + rhs["x"]!
        sum["y"]! = lhs["y"]! + rhs["y"]!
        return sum
    }
    
    public func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        var ans : (Int, Int) = (0, 0)
        ans.0 = lhs.0 - rhs.0
        ans.1 = lhs.1 - rhs.1
        return ans
    }
    
    func subtract(lhs: [String : Int], rhs: [String : Int]) -> [String : Int] {
        var ans : [String : Int] = ["x": 0, "y": 0]
        ans["x"]! = lhs["x"]! - rhs["x"]!
        ans["y"]! = lhs["y"]! - rhs["y"]!
        return ans
    }
    
    public func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    public func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }

    func multiply(_ args : [Int]) -> Int{
        var total = 1;
        for i in args {
            total *= i
        }
        return total
    }
    
    func avg(_ args: [Int]) -> Int{
        let sum = add(args)
        return sum / (args.endIndex-1)
    }
    
    func count(_ args: [Int]) -> Int{
        print(args.endIndex)
        return args.endIndex-1
    }
    
    func mathOp(lhs : Int, rhs : Int, op : (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    func mathOp(args : [Int], beg : Int, op : (Int, Int) -> Int) -> Int {
        var ans = 0;
        for i in 0...args.count-1 {
            ans = ans + i
        }
        return ans
    }
}
