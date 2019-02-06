//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by Sayooj Sojen on 06/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import XCTest

class window_shopperTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCalcHours() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        XCTAssert(Wage.calcHours(wage: 60, price:3800)==64)
        XCTAssert(Wage.calcHours(wage: 25, price: 102)==5)
        XCTAssert(Wage.calcHours(wage: 25, price: 95)==4)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
