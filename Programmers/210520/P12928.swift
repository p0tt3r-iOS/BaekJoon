//
//  P12928.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/20.
//

import Foundation

func solutionP12928(_ n: Int) -> Int {
    n == 0 ? 0 : (1...n).filter { n % $0 == 0 }.reduce(0, +)
}
