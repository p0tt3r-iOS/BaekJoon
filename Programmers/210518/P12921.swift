//
//  P12921.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/18.
//

import Foundation

func solutionP12921(_ n: Int) -> Int {
    var answer = 0
    outer: for i in 2...n {
        for j in 2...i {
            if j*j > i {
                answer += 1
                break
            }
            if i % j == 0 {
                continue outer
            }
        }
    }
    return answer
}
