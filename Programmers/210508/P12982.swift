//
//  P12982.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/09.
//

import Foundation

func solutionP12982(_ d: [Int], _ budget: Int) -> Int {
    if d.reduce(0, +) <= budget {
        return d.count
    }
    
    let office = d.sorted()
    var count = 0
    var pay = 0
    
    for i in 0..<office.count {
        if pay + office[i] > budget {
            count = i
            break
        }
        pay += office[i]
    }
    
    return count
}
