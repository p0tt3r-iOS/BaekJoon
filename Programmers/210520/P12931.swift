//
//  P12931.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/20.
//

import Foundation

func solutionP12931(_ n: Int) -> Int {
    return String(n).map { Int(String($0))! }.reduce(0, +)
}
