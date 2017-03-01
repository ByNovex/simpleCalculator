//
//  Brain.swift
//  simpleCalculator
//
//  Created by Byron Bacusoy Pinela on 27/2/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import Foundation

    class Brain {
    
        
        func getPi() -> Float {
            return Float.pi
        }
        
        func getE() -> Float {
            return Float(M_E)
        }
        
        func sum(x: Float, y:Float) -> Float {
            return x + y
        }
        
        func subtraction(x: Float, y:Float) -> Float {
            return x - y
        }
        
        func multiply(x: Float, y:Float) -> Float {
            return x * y
        }
        
        func divide(x: Float, y:Float) -> Float {

            return x / y
        }
        
        func pow(x:Float, y:Float) -> Float {
            return powf(x, y)
        }
        
        
        func roots(x: Float, y:Float) -> Float {
            return pow(x: x, y: 1.0/y)
        }
        
        func random() -> Float {
             return Float(arc4random()) / Float(UINT32_MAX)
        }
        
        func EE(x: Float, y:Float) -> Float {
            let aux = pow(x: 10, y: y)
            return multiply(x: x,y: aux)
        }
        
        func logCustom(x:Float, base:Float) -> Float {
            return log(x) / log(base)
        }
        
        func oneDivideX(x: Float) -> Float {
            return divide(x: 1, y: x)
        }
        
        func sinus(x: Float) -> Float{
            return sin(x)
        }
        
        func cosinus(x: Float) -> Float {
            return cos(x)
        }
        
        func tang(x: Float) -> Float {
            return tan(x)
        }
        
        func inverse(x: Float) -> Float {
            return x * -1
        }
        
        func oneHundredPercent(x: Float) -> Float {
            return x / 100
        }
        
        func factorial(factorialNumber: Float) -> Float {
            if factorialNumber == 0 {
                return 1
            } else {
                return factorialNumber * factorial(factorialNumber: factorialNumber - 1)
            }
        }
        
        
}
