//
//  P42840.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/08.
//

import Foundation

func solutionP42840(_ answers: [Int]) -> [Int] {
    var scores: [Int] = [0, 0, 0]
    let pattern1 = [1, 2, 3, 4, 5]
    let pattern2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let pattern3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    
    for i in 0..<answers.count {
        let answer = answers[i]
        if answer == pattern1[i % 5] {
            scores[0] += 1
        }
        
        if answer == pattern2[i % 8] {
            scores[1] += 1
        }
        
        if answer == pattern3[i % 10] {
            scores[2] += 1
        }
    }
    
    var result: [Int] = []
    for i in 0..<scores.count {
        if scores[i] == scores.max() {
            result.append(i + 1)
        }
    }
    
    return result
}
