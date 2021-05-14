//
//  P42889.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/13.
//

import Foundation

func solutionP42889(_ n: Int, _ stages: [Int]) -> [Int] {
    var percentage: [Int : Float] = [:]
    for i in 1...n {
        percentage[i] = Float(stages.filter { $0 == i }.count) / Float(stages.filter { $0 >= i }.count)
    }
    
    return percentage.sorted {
        $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 > $1.1
    }.map { $0.key }
}
