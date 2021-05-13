//
//  P68935.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/12.
//

import Foundation

func solutionP68935(_ n: Int) -> Int {
    var result = 0
    let ternary = String(n, radix: 3).reversed()

    for (i, n) in ternary.enumerated() {
        if n == "0" { continue }
        result += Int(String(n))! * Int(pow(3, Double(ternary.count - i - 1)))
    }
    
    return result
}

func solutionP689352(_ n: Int) -> Int {
    let ternary = String(n, radix: 3)
    return Int(String(ternary.reversed()), radix: 3)!
}
