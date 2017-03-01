//
//  viewControllerUnitTest.swift
//  simpleCalculator
//
//  Created by Byron Bacusoy Pinela on 1/3/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import XCTest
@testable import simpleCalculator

class viewControllerUnitTest: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testChangeLabel() {
        viewController.currentNumber = 1
        XCTAssertEqual(viewController!.LabelResult!.text, "1")
    }
    
    func testChangeLabelWithDecimal() {
        viewController.currentNumber = 1.23
        XCTAssertEqual(viewController!.LabelResult.text!, "1,23")
    }
    
    
}
