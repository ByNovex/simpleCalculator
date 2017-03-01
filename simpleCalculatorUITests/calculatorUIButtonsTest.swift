//
//  calculatorUIButtonsTest.swift
//  simpleCalculator
//
//  Created by Byron Bacusoy Pinela on 1/3/17.
//  Copyright © 2017 Novex. All rights reserved.
//

import XCTest

class calculatorUIButtonsTest: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testButtonZero() {
        
        let app = XCUIApplication()
        app.buttons["      0"].tap()
        app.buttons["1"].tap()
        app.buttons["2"].tap()
        app.buttons["3"].tap()
        app.buttons["4"].tap()
        app.buttons["5"].tap()
        app.buttons["6"].tap()
        app.buttons["7"].tap()
        app.buttons["8"].tap()
        app.buttons["9"].tap()

        
    }
    
    func testButtonOne() {
        
    }
    
    func testButtonTwo() {
        
    }
    
    func testButtonThree() {
        
    }
    
    func testButtonFour() {
        
    }
    
    func testButtonFive() {
        
    }
    
    func testButtonSix() {
        
    }
    
    func testButtonSeven() {
        
    }
    
    func testButtonEight() {
        
    }
    
    func testButtonNine() {
        
    }
    
}
