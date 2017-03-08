//
//  ViewController.swift
//  simpleCalculator
//
//  Created by Byron Bacusoy Pinela on 27/2/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var constraintRightStackView: NSLayoutConstraint!
    @IBOutlet var constraintLeftStackView: NSLayoutConstraint!
    @IBOutlet var LabelResult: UILabel!
    
    var calculator:Calculator!
    
    var currentNumber:Float! {
        didSet {
            changeNumberLabel()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculator = Calculator()
        currentNumber = 0
    }
    
    @IBAction func clearPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func operationPressed(_ sender: UIButton) {
        calculator.operationIsPressed(op: Operation(rawValue: sender.tag)!)
    }
    
    @IBAction func numberPressed(_ sender: UIButton) {
        currentNumber = calculator.getNumber(num: sender.tag)
    }

    
    func changeNumberLabel() {
        LabelResult.text = currentNumberToString()
    }
    
    func currentNumberToString() -> String{
        return transformationToString()
    }
    
    func transformationToString() -> String{
        let number = Int(currentNumber)
        if currentNumberIsDecimal() {
            let decimal = getStringDecimal()
            return "\(number),\(decimal)"
        }
        else {
            return "\(number)"
        }
    }
    
    func getStringDecimal() -> String {
        let arrayDecimalSeparatedByDot = String(getDecimalFromCurrentNumber()).components(separatedBy: ".")
        return arrayDecimalSeparatedByDot[1]
    }
    
    func currentNumberIsDecimal() -> Bool {
        return getDecimalFromCurrentNumber() != 0
    }
    
    func getDecimalFromCurrentNumber() -> Float {
        return currentNumber.truncatingRemainder(dividingBy: 1)
    }
    
    override func viewWillLayoutSubviews() {
        //Este metodo se llama justo antes de volver a dibujar los layouts
        checkOrientation(orientation: UIDevice.current.orientation)
    }
    
    func checkOrientation(orientation: UIDeviceOrientation) {
        
        if orientation.isPortrait {

            constraintLeftStackView.isActive = false
            constraintRightStackView.isActive = true
   
        } else {

            constraintLeftStackView.isActive = true
            constraintRightStackView.isActive = false
            
        }
    }
    
    


}

