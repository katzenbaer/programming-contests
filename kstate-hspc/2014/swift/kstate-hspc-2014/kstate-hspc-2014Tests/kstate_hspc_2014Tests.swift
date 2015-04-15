//
//  kstate_hspc_2014Tests.swift
//  kstate-hspc-2014Tests
//
//  Created by Terrence K on 4/15/15.
//  Copyright (c) 2015 Terrence Katzenbaer. All rights reserved.
//

import Cocoa
import XCTest
import kstate_hspc_2014

class kstate_hspc_2014Tests: XCTestCase {
    
    let advancedProblemSet = AdvancedProblemSet()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testProblemOneExampleOne() {
        // Example 1:
        // The track is 1 mile in length. You and your friend start together, she runs faster and
        // passes you at the halfway point and again right at the end of the mile.
        // It took you 900 seconds (15 minutes). You did 1 mile in .25 hours for 4 miles per hours.
        // She ran 3 miles in 15 minutes for 12 miles per hour or 8 miles per hour faster than you.
        // Answer: 8 miles/hour faster than you
        
        // Arrange
        let trackLength = 1.0
        let time = 900.0
        let passes = 2
        
        // Act
        let result = advancedProblemSet.problemOne(trackLength, yourCompletionTime: time, numberOfPasses: passes)
        
        // Assert
        XCTAssertEqual(result, 8, "incorrect answer: she should be 8 mph faster")
    }
    
    func testProblemOneExampleTwo() {
        // Length = 0.5 mile Time = 900 sec X=1
        // Answer: 2 miles per hour faster (she was 4 miles per hour, your were 2 miles per hour)
        
        // Arrange
        let trackLength = 0.5
        let time = 900.0
        let passes = 1
        
        // Act
        let result = advancedProblemSet.problemOne(trackLength, yourCompletionTime: time, numberOfPasses: passes)
        
        // Assert
        XCTAssertEqual(result, 2, "incorrect answer: she should be 2 mph faster")
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
