//
//  P42889.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/13.
//

import Foundation

func solutionP42889(_ n: Int, _ stages: [Int]) -> [Int] {
    var percentage: [Int : Double] = [:]
    for i in 0..<n {
        percentage[i + 1] = Double(stages.filter { $0 == i + 1}.count) / Double(stages.filter { $0 >= i + 1 }.count)
    }
    
    return percentage.sorted {
        if $0.1 == $1.1 {
            return $0.0 < $1.0
        } else {
            return $0.1 > $1.1
        }
    }.map { $0.key }
}
