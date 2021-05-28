//
//  P12935.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/28.
//

import Foundation

func solutionP12935(_ arr: [Int]) -> [Int] {
    let min = arr.min()!
    var answer: [Int] = []
    for i in arr {
        if i != min {
            answer.append(i)
        }
    }
    return answer.isEmpty ? [-1] : answer
}
