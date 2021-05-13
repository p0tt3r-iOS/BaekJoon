//
//  P68644.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/12.
//

import Foundation

func solutionP68644(_ numbers: [Int]) -> [Int] {
    var result: Set<Int> = []
    var n = numbers
    
    while !n.isEmpty {
        let i = n[0]
        for j in 1..<n.count {
            result.insert(i + n[j])
        }
        n.removeFirst()
    }
    
    return Array(result).sorted()
}
