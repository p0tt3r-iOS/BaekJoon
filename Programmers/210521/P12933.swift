//
//  P12933.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/21.
//

import Foundation

func solutionP12933(_ n: Int64) -> Int64 {
    var answer: Int64 = 0
    let sorted = String(n).map { String($0) }.sorted(by: >)
    for (i, n) in sorted.enumerated() {
        answer += (Int64(n)! * Int64(pow(Double(10), Double(sorted.count - i - 1))))
    }
    return answer
}
