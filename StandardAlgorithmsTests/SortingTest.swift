//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Bryson, David (IRG) on 07/11/2019.
//  Copyright © 2019 David Bryson. All rights reserved.
//

import XCTest

class SortingTest: XCTestCase {

    func testBubbleSortWithIntegerArrayReturnsSortedIntegers() {
        //arrange
        let sorting = Sorting()
        let data = [5,4,1,3]
        //act
        let actual = sorting.bubbleSort(data: data)
        //assert
        XCTAssertEqual(actual, [1,3,4,5])
    }
    
    func testBubbleSortWithMultipleIntegerArraysReturnsSortedIntegerArrays() {
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [7,4,2,8,3,1,9,6,5], expected: [1,2,3,4,5,6,7,8,9]),
                         (input: [456,300,3,1,5,4], expected:[1,3,4,5,300,456])]
        //act
        //assert
        for testCase in testCases {
            //testCase is a tuple representing the input test data and our expected output
            let actual = sorting.bubbleSort(data: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testBubbleSortPerformace() {
        //arrange
        let data = [9,8,7,6,5,4,3,2,1]
        let sorting = Sorting()
        
        //act
        measure {
            sorting.bubbleSort(data: data)
        }
    }
    
    func testThatMergeArraysCorrectlyMergesTwoArrays() {
        //arrange
        let sorting = Sorting()
        let testCases = [(leftInput: [1,2,3], rightInput: [4,5,6], expected: [1,2,3,4,5,6])]
        
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.mergeArrays(left: testCase.leftInput, right: testCase.rightInput)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
}
