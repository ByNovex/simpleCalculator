//
//  Calculator.swift
//  simpleCalculator
//
//  Created by Byron Bacusoy Pinela on 1/3/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import Foundation

class Calculator {
    var number:Float
    var numberCalculate:Float
    var operation:Int
    
    init() {
        number = 0
        numberCalculate = 0
        operation = 0
    }
    
    func getNumber(num: Int) -> Float{
        if (num != Number.decimal.hashValue){
            number = Float(num)
        }
        else {
            //es el punto de decimal.
        }
        return number
        
    }
    
    func operationIsPressed(op: Operation){
        switch op {
        case .ac:
            acPressed()
        case .inverse:
            inverseOP()
        case .hundredPercent:
            oneHundredPercentOP()
        case .divide:
            divideOP()
        case .multiply:
            multiplyOP()
        case .substration:
            substrationOP()
        case .sum:
            sumOP()
        case .equal:
            equalOP()
        }
        
    }
    
    func acPressed() {
        
    }
    
    func inverseOP() {
        
    }
    
    func divideOP() {
        
    }
    
    func multiplyOP() {
        
    }
    
    func oneHundredPercentOP() {
        
    }
    
    func substrationOP() {
        
    }
    
    func sumOP() {
        
    }
    
    func equalOP() {
        
    }
    
    
    
    

}
