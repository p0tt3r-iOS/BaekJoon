//
//  P42842.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/06/15.
//

import Foundation

func soultionP42842(_ brown: Int, _ yellow: Int) -> [Int] {
    let sum = brown + yellow
    var divisor: [Int] = []
    for i in 1..<sum {
        divisor.append(i)
    }
    for j in divisor {
        if (j - 2) * ((sum / j) - 2) == yellow {
            return [sum / j, j]
        }
    }
    
    return []
}

