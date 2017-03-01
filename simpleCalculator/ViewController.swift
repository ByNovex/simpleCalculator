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
            changeNumLabel(num: currentNumber)
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
        
    }
    
    @IBAction func numberPressed(_ sender: UIButton) {
        currentNumber = calculator.getNumber(num: sender.tag)
    }

    
    func changeNumLabel(num:Float) {
        let aux = checkCurrentNum()
        LabelResult.text = aux
    }
    
    func checkCurrentNum() -> String{
        let aux = currentNumber.truncatingRemainder(dividingBy: 1)
        if aux != 0 {
            let aux = String(aux).components(separatedBy: ".")
            return "\(Int(currentNumber)),\(aux[1])"
        }
        else {
            return "\(Int(currentNumber))"
        }
    }
    
    override func viewWillLayoutSubviews() {
        //Justo antes de volver a dibujar los layouts
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

