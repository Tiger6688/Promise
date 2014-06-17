//
//  PromiseTests.swift
//  PromiseTests
//
//  Created by Matt Galloway on 17/06/2014.
//  Copyright (c) 2014 Swift Promises. All rights reserved.
//

import XCTest

class PromiseTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTypesWork() {
      Promise.succeed(3).then({(x : Int) in XCTAssertTrue(true, ""); return}, fail: {(s:String) in return})

    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
