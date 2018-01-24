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
}
