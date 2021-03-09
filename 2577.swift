//
//  2577.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/09.
//

import Foundation

func solution2577() {
    let a = Int(readLine()!)!
    let b = Int(readLine()!)!
    let c = Int(readLine()!)!
    let result = String(a * b * c)
    let digits = result.compactMap { $0.wholeNumberValue }
    var countArray: [Int] = Array(repeating: 0, count: 10)
    for i in digits {
        for j in 0...9 {
            if i == j {
                countArray[j] += 1
            }
        }
    }
    for i in countArray {
        print(i)
    }
}

