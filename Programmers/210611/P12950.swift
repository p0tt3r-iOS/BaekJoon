//
//  P12950.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/06/11.
//

func solutionP12950(_ arr1: [[Int]], _ arr2: [[Int]]) -> [[Int]] {
    var answer = arr1
    for i in 0..<answer.count {
        for j in 0..<answer[i].count {
            answer[i][j] += arr2[i][j]
        }
    }
    return answer
}
