//
//  brainTests.swift
//  simpleCalculator
//
//  Created by Byron Bacusoy Pinela on 27/2/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import XCTest
@testable import simpleCalculator

class brainTests: XCTestCase {
    
    let brain = Brain()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDoSum(){
        XCTAssertEqual(brain.sum(x: 2, y: 3), 5)
    }
    
    func testDoSubtraction() {
        XCTAssertEqual(brain.subtraction(x: 3, y: 2), 1)
    }
    
    func testDoMultiply() {
        XCTAssertEqual(brain.multiply(x: 2, y: 3), 6)
    }
    
    func testDoDivide() {
        XCTAssertEqual(brain.divide(x: 6, y: 2), 3)
    }
    
    func testReturnPi() {
        XCTAssertEqual(brain.getPi(), Float.pi)
    }
    
    func testRetunrE() {
        XCTAssertEqual(brain.getE(), Float(M_E))
    }
    
    func tesDoPow2() {
        XCTAssertEqual(brain.pow(x:2, y:2.0), 4)
    }
    
    func testDoPow3() {
        XCTAssertEqual(brain.pow(x:2, y:3.0), 8)
    }
    
    func testDoPowXY() {
        XCTAssertEqual(brain.pow(x:2, y:4), 16)
    }
    
    func testDoPowYX() {
        XCTAssertEqual(brain.pow(x:4, y:2), 16)
    }
    
    func testoDoPow2X() {
        XCTAssertEqual(brain.pow(x:2.0, y:2), 4)
    }
    
    func testDoPow10X() {
        XCTAssertEqual(brain.pow(x:10.0, y:2), 100)
    }
    func testDoPowEX() {
        XCTAssertEqual(brain.pow(x:Float(M_E), y:2), Float(powf(Float(M_E), 2)))
    }
    
    func testDoFactorial() {
        XCTAssertEqual(brain.factorial(factorialNumber: 5), 120)
    }
    
    func testDoSquareRoot() {
        XCTAssertEqual(brain.roots(x: 4, y:2), 2)
    }
    
    func testDoCubeRoot() {
        XCTAssertEqual(brain.roots(x: 27, y:3), 3)
    }
    
    func testDoSomeRoot() {
        XCTAssertEqual(brain.roots(x:4, y:6), powf(4.0, 1.0/6.0))
    }
    
    func testDoSomeRandom() {
        XCTAssertNotNil(brain.random())
    }
    
    func testDoEE() {
        XCTAssertEqual(brain.EE(x:5, y:2), 500)
    }
    
    func testDoLogE() {
        XCTAssertEqual(brain.logCustom(x: Float(M_E), base: Float(M_E)), 1)
    }
    
    func testDoLog10() {
        XCTAssertEqual(brain.logCustom(x: 10, base: 10), 1)
    
    }
    
    func testDoLog2() {
        XCTAssertEqual(brain.logCustom(x: 2, base: 2), 1)
    }
    
    func testDoLogY() {
        XCTAssertEqual(brain.logCustom(x: 4, base: 4), 1)
    }
    
    func testDo1DivideX() {
        XCTAssertEqual(brain.oneDivideX(x: 2), 0.5)
    }
    
    func testDoSin() {
        XCTAssertEqual(brain.sinus(x: 0), 0)
    }
    
    func testDoCos() {
        XCTAssertEqual(brain.cosinus(x: 0), 1)
    }
    
    func testDoTan() {
        XCTAssertEqual(brain.tang(x: 0), 0)
    }
    
    func testDoInverse() {
        XCTAssertEqual(brain.inverse(x: 1), -1)
    }
    
    func testDoOneHundredPercent() {
        XCTAssertEqual(brain.oneHundredPercent(x: 100), 1)
    }
}
