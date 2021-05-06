//
//  PscQ2.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/06.
//

import Foundation

func solutionPscQ2(_ x: Int, _ n: Int) -> [Int64] {
    var result: [Int64] = []
    for i in 1...n {
        result.append(Int64(x * i))
    }
    return result
}
