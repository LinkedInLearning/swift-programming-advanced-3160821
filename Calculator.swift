//
//  Calculator.swift
//  LiL Swift Programming Advanced
//
//  Created by LinkedIn Learning on 16.11.21.
//

import Foundation

struct Calculator {
    var result: Int?
    
    @discardableResult
    mutating func addition(_ firstValue: Int, _ secondValue: Int) -> Int {
        result = firstValue + secondValue
        print("Result: \(result!)")
        return result!
    }
}

func calculatorSample() {
    var myCalculator = Calculator()
    myCalculator.addition(19, 99)
}
