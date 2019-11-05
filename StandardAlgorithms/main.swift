//
//  main.swift
//  StandardAlgorithms
//
//  Created by Bryson, David (IRG) on 05/11/2019.
//  Copyright © 2019 David Bryson. All rights reserved.
//

import Foundation

print("Goodbye, World!")


let unsortedArray = [5,6,2,4,1,7,8,3,0,-1,-2,-3]

func mergeArrays(left:[Int],right:[Int]) -> [Int] {
    var leftPoint = 0
    var rightPoint = 0
    var sortedArray: [Int] = []
    while leftPoint < left.count && rightPoint < right.count {
        let leftElement = left[leftPoint]
        let rightElement = right[rightPoint]
        if leftElement < rightElement {
            sortedArray.append(leftElement)
            leftPoint += 1
        } else if leftElement > rightElement {
            sortedArray.append(rightElement)
            rightPoint += 1
        } else {
            sortedArray.append(leftElement)
            leftPoint += 1
            sortedArray.append(rightElement)
            rightPoint += 1
        }
    }
    while leftPoint < left.count {
        sortedArray.append(left[leftPoint])
        leftPoint += 1
    }
    while rightPoint < right.count {
        sortedArray.append(right[rightPoint])
        rightPoint += 1
    }
    return sortedArray
}

func mergeSort(unsortedArray:[Int]) -> [Int] {
    guard unsortedArray.count > 1 else {return unsortedArray}
    let midPoint = unsortedArray.count/2
    let left = mergeSort(unsortedArray:Array(unsortedArray[0..<midPoint]))
    let right = mergeSort(unsortedArray:Array(unsortedArray[midPoint..<unsortedArray.count]))
    return mergeArrays(left:left,right:right)
}

print(mergeSort(unsortedArray:unsortedArray))
