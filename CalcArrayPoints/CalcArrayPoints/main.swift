//
//  main.swift
//  SimpleCalc
//
//  Created by Michael Nguyen on 4/2/17.
//  Copyright © 2017 Michael Nguyen. All rights reserved.
//

import Foundation

// Calculator
func add(left: Int, right: Int) -> Int {
    return left + right;
}

func subtract(left: Int, right: Int) -> Int {
    return left - right;
}

func multiply(left: Int, right: Int) -> Int {
    return left * right;
}

func divide(left: Int, right: Int) -> Int {
    return left / right;
}

func mathOperation(left: Int, right: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(left, right)
}

// Array Fun
func add(array:[Int]) -> Double {
    return Double(array.reduce(0, +))
}

func multiply(array:[Int]) -> Int {
    return array.reduce(1, *)
}

func average(array:[Int]) -> Double {
    return Double(array.reduce(0, +))/Double(array.count)
}

func count(array:[Int]) -> Int {
    return array.count
}

func reduce(array:[Int], operation:(([Int]) -> Double)) -> Double {
    return Double(operation(array))
}

// Tuple Points
func add(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    return (p1.0 + p2.0, p1.1 + p2.1)
}

func subtract(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    return (p1.0 - p2.0, p1.1 - p2.1)
}

// Dictionary Points
func check(point1: [String: Any]?, point2: [String: Any]?) -> Bool {
    if point1 == nil || point2 == nil {
        return false
    }
    
    let point1x = point1!["x"]
    let point1y = point1!["y"]
    let point2x = point1!["x"]
    let point2y = point1!["y"]
    
    if point1x == nil || point1y == nil ||
        point2x == nil || point2y == nil {
        return false
    }
    return true
}


func add(p1: [String: Int]?, p2: [String: Int]?) -> [String: Int]? {
    if check(point1: p1, point2: p2) {
        return ["x": (p1!["x"]! + p2!["x"]!), "y": (p1!["y"]! + p2!["y"]!)]
    }
    return ["":0]
}

func add(p1: [String: Double]?, p2: [String: Double]?) -> [String: Double]? {
    if check(point1: p1, point2: p2) {
        return ["x": (p1!["x"]! + p2!["x"]!), "y": (p1!["y"]! + p2!["y"]!)]
    }
    return ["":0]
}

func subtract(p1: [String: Int]?, p2: [String: Int]?) -> [String: Int]? {
    if check(point1: p1, point2: p2) {
        return ["x": (p1!["x"]! - p2!["x"]!), "y": (p1!["y"]! - p2!["y"]!)]
    }
    return ["":0]
}

func subtract(p1: [String: Double]?, p2: [String: Double]?) -> [String: Double]? {
    if check(point1: p1, point2: p2) {
        return ["x": (p1!["x"]! - p2!["x"]!), "y": (p1!["y"]! - p2!["y"]!)]
    }
    return ["":0]
}
