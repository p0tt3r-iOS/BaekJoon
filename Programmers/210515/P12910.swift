//
//  P12910.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/15.
//

import Foundation

func solutionP12910(_ arr: [Int], _ divisor: Int) -> [Int] {
    let answer: [Int] = arr.filter { $0 % divisor == 0 }.sorted()
    return answer.isEmpty ? [-1] : answer
}
