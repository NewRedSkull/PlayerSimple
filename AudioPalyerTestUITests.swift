//
//  AudioPalyerTestUITests.swift
//  AudioPalyerTestUITests
//
//  Created by Andrii on 11/29/18.
//  Copyright © 2018 Andrii. All rights reserved.
//

import XCTest

class AudioPalyerTestUITests: XCTestCase {
    
    var app:XCUIApplication = XCUIApplication()

    override func setUp() {
        app = XCUIApplication()
        app.launch()
    }

    override func tearDown(){
        app = XCUIApplication()
        app.terminate()
    }

    func testExample() {
        app = XCUIApplication()
        let g = app.buttons["PLAY"]
        g.tap()
        app.buttons["STOP"].tap()
        XCTAssert(g.isHittable)
        //new tests!!!!!!
            }

}
