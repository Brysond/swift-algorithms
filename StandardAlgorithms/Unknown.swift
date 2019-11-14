//
//  Unknown.swift
//  StandardAlgorithms
//
//  Created by Bryson, David (IRG) on 14/11/2019.
//  Copyright © 2019 David Bryson. All rights reserved.
//

import Foundation

class Unknown {
    
    func sumFirstAndLast(data:[Int]) -> Int {
        if data.count == 0 {
            return 0
        } else {
            return data[0]+data[data.count-1]
        }
    }
    
    func mode(data:[Int]) -> Int {
        var mode = 0
        var current = 0
        var modeNum = data[0]
        var currentNum = data[0]
        for number in data {
            if number != currentNum {
                if current > mode {
                    mode = current
                    modeNum = currentNum
                }
                current = 0
                currentNum = data[number]
            }
            if number == modeNum {
                mode += 1
                current += 1
            } else if number == currentNum {
                current += 1
            }
        }
        return modeNum
    }
    
    func secondSmallest(data:[Int]) -> Int {
        return 0
    }
}
