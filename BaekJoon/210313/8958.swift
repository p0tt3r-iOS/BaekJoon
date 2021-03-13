//
//  8958.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/13.
//

import Foundation

func solution8958() {
    let count = Int(readLine()!)!
    
    for _ in 1...count {
        var answer = readLine()!
        var score = 0
        var scorePerAnswer = 0
        for _ in 1...answer.count {
            if answer.removeFirst() == "O" {
                scorePerAnswer += 1
                score += scorePerAnswer
            } else {
                scorePerAnswer = 0
            }
        }
        print(score)
    }
}

