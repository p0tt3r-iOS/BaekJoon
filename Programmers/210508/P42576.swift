//
//  P42576.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/08.
//

import Foundation

func solutionP42576(_ clothes: [[String]]) -> Int {
    var cloth: [String : [String]] = [:]
    var count = 0
    var cases: [Int] = []
    for set in clothes {
        var set = set
        let category = set.last!
        set.removeLast()
        
        if cloth.keys.contains(category) {
            cloth[category]! += set
        } else {
            cloth[category] = set
        }
    }
    
    for (_, set) in cloth.enumerated() {
        cases.append(set.value.count + 1)
    }
    
    count = cases.reduce(1, *) - 1
    
    return count
}
