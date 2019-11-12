//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Bryson, David (IRG) on 07/11/2019.
//  Copyright © 2019 David Bryson. All rights reserved.
//

import Foundation

class Sorting {
    func bubbleSort(data: [Int]) -> [Int] {
        var array = data
        for j in 2...(array.count) {
            for i in 0...(array.count)-j {
                if array[i]>array[i+1] {
                    let temp = array[i]
                    array[i] = array[i+1]
                    array[i+1] = temp
                }
            }
        }
        return (array)
    }
    
    func mergeArrays2(left: [Int], right: [Int]) -> [Int] {
        var merged = [Int]()
        merged.append(contentsOf: left)
        merged.append(contentsOf: right)
        return (merged)
    }
    
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
    
    func quickSort(data: [Int]) -> [Int] {
        if data.count <= 1 {
            return data
        } else {
            let pivot = data[0]
        var left = [Int]()
        var right = [Int]()
            for i in 1..<data.count {
                let item = data[i]
                if item < pivot {
                    left.append(item)
                } else {
                    right.append(item)
                }
        }
            var finalArray = [Int]()
            finalArray.append(contentsOf: quickSort(data: left))
            finalArray.append(pivot)
            finalArray.append(contentsOf: quickSort(data: right))
            return finalArray
        }
    }
    
    func insertionSort(data: [Int]) -> [Int] {
        var sortedArray = data
        for i in 1..<sortedArray.count {
            var j = i
            while j > 0 && sortedArray[j] < sortedArray[j-1] {
                let temp = sortedArray[j]
                sortedArray[j] = sortedArray[j-1]
                sortedArray[j-1] = temp
                j -= 1
            }
        }
        return sortedArray
    }
    
    
}
