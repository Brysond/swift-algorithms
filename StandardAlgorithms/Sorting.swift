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
    
    func mergeArrays(left: [Int], right: [Int]) -> [Int] {
        var merged = [Int]()
        merged.append(contentsOf: left)
        merged.append(contentsOf: right)
        return (merged)
    }
}
