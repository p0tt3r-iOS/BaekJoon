//
//  P12934.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/28.
//

import Foundation

func solutionP12934(_ n: Int64) -> Int64 {
    let sqare = sqrt(Double(n))
    return sqare == floor(sqare) ? Int64((sqare + 1) * (sqare + 1)) : -1
}
