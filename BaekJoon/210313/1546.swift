//
//  1546.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/13.
//

import Foundation

func solution1546() {
    let count = Double(readLine()!)!
    let scores = readLine()!.split(separator: " ").map { Double($0)! }
    var highestScore = 0.0
    
    for score in scores {
        if score > highestScore {
            highestScore = score
        }
    }
    
    let fixedAverage = (scores.map { $0 / highestScore * 100}.reduce(0, +)) / count
    print(fixedAverage)
    
}


