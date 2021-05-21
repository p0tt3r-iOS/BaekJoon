//
//  P12932.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/21.
//

import Foundation

func solutionP12932(_ n: Int64) -> [Int] {
    return String(n).map { Int(String($0))! }.reversed()
}
