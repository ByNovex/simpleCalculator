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
    
    init() {
        number = 0
        numberCalculate = 0
    }
    
    func numberIsPressed(num: Number){
        if (num != .decimal){
            number = Float(num.hashValue)
        }
        else {
            //es el punto de decimal.
        }
    }
    
    
    
    

}
