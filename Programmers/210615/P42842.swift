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
        if sum % i == 0 {
            divisor.append(i)
        }
    }
    
    return [divisor.max()!, sum / divisor.max()!]
}
