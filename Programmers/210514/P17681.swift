//
//  ㅖ17681.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/15.
//

import Foundation

func solutionP17681(_ n: Int, _ arr1: [Int], _ arr2: [Int]) -> [String] {
    var binary1 = arr1.map { String($0, radix: 2) }
    var binary2 = arr2.map { String($0, radix: 2) }
    var answer: [String] = []
    
    for i in 0..<n {
        var line = ""
        while binary1[i].count < n {
            binary1[i] = "0\(binary1[i])"
        }
        while binary2[i].count < n {
            binary2[i] = "0\(binary2[i])"
        }
        for j in 0..<n {
            let index = binary1[i].index(binary1[i].startIndex, offsetBy: j)
            if binary1[i][index] == "1" || binary2[i][index] == "1" {
                line += "#"
            } else {
                line += " "
            }
        }
        answer.append(line)
    }
    
    return answer
}
