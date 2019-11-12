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
        let data = [5,4,3,2,1]
        let sorting = Sorting()
        
        //act
        measure {
            sorting.bubbleSort(data: data)
        }
    }
    
    func testBubbleSortPerformace50() {
        //arrange
        var data: Array<Int> = []
        for _ in 0...49 {
            data.append(Int.random(in: 0..<100))
        }
        let sorting = Sorting()
        
        //act
        measure {
            sorting.bubbleSort(data: data)
        }
    }
    
    
    func testBubbleSortPerformace500() {
        //arrange
        var data: Array<Int> = []
        for _ in 0...499 {
            data.append(Int.random(in: 0..<500))
        }
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
            let actual = sorting.mergeArrays2(left: testCase.leftInput, right: testCase.rightInput)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
        
    func testMergeSortReturnsSortedArrays() {
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [5,4,3,2,1], expected: [1,2,3,4,5]),
                         (input:[10,9,8,7,6,5,4,3,2,1], expected: [1,2,3,4,5,6,7,8,9,10])]
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.mergeSort(unsortedArray:testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testMergeSortPerformance() {
        //arrange
        let sorting = Sorting()
        let testCase = [5,4,3,2,1]
        //act
        measure {
            sorting.mergeSort(unsortedArray:testCase)
        }
    }
    
    func testMergeSortPerformance50() {
        //arrange
        let sorting = Sorting()
        var data: Array<Int> = []
        for _ in 0...49 {
            data.append(Int.random(in: 0..<100))
        }
        //act
        measure {
            sorting.mergeSort(unsortedArray:data)
        }
    }
    
    func testMergeSortPerformance500() {
        //arrange
        let sorting = Sorting()
        var data: Array<Int> = []
        for _ in 0...499 {
            data.append(Int.random(in: 0..<500))
        }        //act
        measure {
            sorting.mergeSort(unsortedArray:data)
        }
    }
    
    
    func testLinearSearchReturnsCorrectBooleanVariable() {
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [1,2,3,4,5], expected: true),
                         (input:[1,2,3,4], expected: false)]
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.linearSearch(input: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testLinearSearchPerformace5() {
        //arrange
        let sorting = Sorting()
        var data: Array<Int> = []
        for _ in 0...4 {
            data.append(Int.random(in: 0..<5))
        }
        //act
        measure {
            sorting.linearSearch(input: data)
        }
    }
    
    func testLinearSearchPerformace50() {
        //arrange
        let sorting = Sorting()
        var data: Array<Int> = []
        for _ in 0...49 {
            data.append(Int.random(in: 0..<50))
        }
        //act
        measure {
            sorting.linearSearch(input: data)
        }
    }
    
    func testLinearSearchPerformace500() {
        //arrange
        let sorting = Sorting()
        var data: Array<Int> = []
        for _ in 0...499 {
            data.append(Int.random(in: 0..<500))
        }
        //act
        measure {
            sorting.linearSearch(input: data)
        }
    }
    
    func testBinarySearchReturnsCorrectBooleanVariable() {
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [1,2,3,4,5], expected: true),
                         (input:[1,2,3,4], expected: false)]
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.binarySearch(sortedArray: testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testBinarySearchPerformance() {
        //arrange
        let sorting = Sorting()
        var data: Array<Int> = []
        for i in 0...4 {
            data.append(i+1)
        }
        //act
        measure {
            sorting.binarySearch(sortedArray:data)
        }
    }
    
    func testBinarySearchPerformance50() {
        //arrange
        let sorting = Sorting()
        var data: Array<Int> = []
        for i in 0...49 {
            data.append(i+1)
        }
        //act
        measure {
            sorting.binarySearch(sortedArray:data)
        }
    }
    
    func testBinarySearchPerformance500() {
        //arrange
        let sorting = Sorting()
        var data: Array<Int> = []
        for i in 0...499 {
            data.append(i+1)
        }
        //act
        measure {
            sorting.binarySearch(sortedArray:data)
        }
    }
    
    func testQuickSortReturnsSortedArrayOfIntegers() {
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [5,4,3,2,1], expected: [1,2,3,4,5]),
                         (input:[10,9,8,7,6,5,4,3,2,1], expected: [1,2,3,4,5,6,7,8,9,10])]
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.quickSort(data:testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testQuickSortPerformance() {
        //arrange
        let sorting = Sorting()
        let testCase = [5,4,3,2,1]
        //act
        measure {
            sorting.quickSort(data:testCase)
        }
    }
    
    func testQuickSortPerformance50() {
        //arrange
        let sorting = Sorting()
        var data: Array<Int> = []
        for _ in 0...49 {
            data.append(Int.random(in: 0..<100))
        }
        //act
        measure {
            sorting.quickSort(data:data)
        }
    }
    
    func testQuickSortPerformance500() {
        //arrange
        let sorting = Sorting()
        var data: Array<Int> = []
        for _ in 0...499 {
            data.append(Int.random(in: 0..<500))
        }        //act
        measure {
            sorting.quickSort(data:data)
        }
    }
    
    func testInsertionSortReturnsSortedArrayOfIntegers() {
        //arrange
        let sorting = Sorting()
        let testCases = [(input: [5,4,3,2,1], expected: [1,2,3,4,5]),
                         (input:[10,9,8,7,6,5,4,3,2,1], expected: [1,2,3,4,5,6,7,8,9,10])]
        //act
        //assert
        for testCase in testCases {
            let actual = sorting.insertionSort(data:testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testInsertionSortPerformance() {
        //arrange
        let sorting = Sorting()
        let testCase = [5,4,3,2,1]
        //act
        measure {
            sorting.insertionSort(data:testCase)
        }
    }
    
    func testInsertionSortPerformance50() {
        //arrange
        let sorting = Sorting()
        var data: Array<Int> = []
        for _ in 0...49 {
            data.append(Int.random(in: 0..<100))
        }
        //act
        measure {
            sorting.insertionSort(data:data)
        }
    }
    
    func testInsertionSortPerformance500() {
        //arrange
        let sorting = Sorting()
        var data: Array<Int> = []
        for _ in 0...499 {
            data.append(Int.random(in: 0..<500))
        }        //act
        measure {
            sorting.insertionSort(data:data)
        }
    }

}
