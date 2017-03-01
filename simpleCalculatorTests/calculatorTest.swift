//
//  calculatorTest.swift
//  simpleCalculator
//
//  Created by Byron Bacusoy Pinela on 1/3/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import XCTest
@testable import simpleCalculator

class calculatorTest: XCTestCase {
    
    let calculator = Calculator()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testGetNumberFromButton() {
        calculator.numberIsPressed(num: .one)
        XCTAssertEqual(calculator.number, 1)
    }
    
}
