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
    @IBOutlet weak var LabelResult: UILabel!
    
    @IBAction func clearPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func operationPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func numberPressed(_ sender: UIButton) {
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews() {
        //Justo antes de volver a dibujar los layouts
        checkOrientation(orientation: UIDevice.current.orientation)
    }
    
//    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
//        checkOrientation(orientation: UIDevice.current.orientation)
//    }
    
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

