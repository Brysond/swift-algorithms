//
//  UnknownTest.swift
//  StandardAlgorithms
//
//  Created by Bryson, David (IRG) on 14/11/2019.
//  Copyright © 2019 David Bryson. All rights reserved.
//

import XCTest

class unknownTest: XCTestCase {
    let unknown = Unknown()
    func testThatSumFirstAndLastReturnsCorrectSum() {
        //arrange
        let testCases = [(input: [7,4,2,8,3,1,9,6,5], expected: 12),
                         (input: [2], expected:4),
                         (input: [], expected: 0)]
        //act
        //assert
        for testCase in testCases {
            let actual = unknown.sumFirstAndLast(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testThatModeReturnsTheMode() {
        //arrange
        let testCases = [(input: [1,1,1,2,3,4,5,6,7,8,8], expected: 1),
                         (input: [1,2,3,3,4,5,6,7,8], expected:3),
                         (input: [1,1,1], expected:1)]
        //act
        //assert
        for testCase in testCases {
            let actual = unknown.mode(data:testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testThatSecondSmallestReturnsTheSecondSmallest() {
        //arrange
        let testCases = [(input: [7,4,2,8,3,1,9,6,5], expected:2),
                         (input: [3,2,2], expected:3),
                         (input: [1,2,3], expected:2)]
        //act
        //assert
        for testCase in testCases {
            let actual = unknown.secondSmallest(data:testCase.input)
            XCTAssertEqual(actual,testCase.expected)
        }
    }
}
