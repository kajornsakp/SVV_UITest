//
//  SVVUITests.swift
//  SVVUITests
//
//  Created by Kajornsak Peerapathananont on 5/3/2560 BE.
//  Copyright © 2560 Kajornsak Peerapathananont. All rights reserved.
//

import XCTest

class SVVUITests: XCTestCase {
    
    var app : XCUIApplication!
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app = XCUIApplication()
        app.launch()
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testFirstPage(){
        
        let app = XCUIApplication()
        let button = app.buttons["Button"]
        button.tap()
        let text = "helloworld"
        let textField = app.otherElements.containing(.navigationBar, identifier:"Second Page").children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .textField).element
        textField.tap()
        textField.typeText(text)
        button.tap()
    XCTAssert(app.alerts["Alert"].staticTexts[text].exists)
        app.alerts["Alert"].buttons["Cancel"].tap()
        app.navigationBars["Second Page"].buttons["First Page"].tap()
        
    }
    func testExample(){
        
        let app = XCUIApplication()
        let button = app.buttons["Button"]
        XCTAssert(button.exists)
        button.tap()
        XCTAssert(app.navigationBars["Second Page"].exists)
        
        let textField = app.otherElements.containing(.navigationBar, identifier:"Second Page").children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .textField).element
        textField.tap()
        textField.typeText("hello")
        button.tap()
        app.alerts["Alert"].buttons["OK"].tap()
        
    }

    
    func testShowSecondPage(){
        XCUIApplication().buttons["Button"].tap()
        let app = XCUIApplication()
        XCTAssert(app.navigationBars["Second Page"].exists)
    }
    
    
    func testShouldGoToNextPageAndTypeSomething(){
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
