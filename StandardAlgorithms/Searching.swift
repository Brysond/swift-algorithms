//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Bryson, David (IRG) on 12/11/2019.
//  Copyright © 2019 David Bryson. All rights reserved.
//
/*
import Foundation

class Searching {
    func linearSearch (input:[Int]) -> Bool {
        var found = false
        let searchFor = 5
        for i in 0...input.count-1 {
            if input[i] == searchFor {
                found = true
            }
        }
        return found
    }
    
    func binarySearch(sortedArray: [Int]) -> Bool {
        var upperBound = sortedArray.count
        var lowerBound = 0
        var found = false
        let searchFor = 5
        while lowerBound < upperBound {
            let midPoint = lowerBound + (upperBound - lowerBound)/2
            if sortedArray[midPoint] == searchFor {
                found = true
                return found
            } else if sortedArray[midPoint] < searchFor {
                lowerBound = midPoint+1
            } else {
                upperBound = midPoint
            }
        }
        return found
    }
    
}
*/
