//
//  P12981.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/09.
//

import Foundation

func solutionP12981(_ n: Int, _ words: [String]) -> [Int] {
    var answer = [0, 0]
    var seq: [String] = []
    
    for i in 0..<words.count {
        if seq.contains(words[i]) {
            answer[0] = i % n + 1
            answer[1] = i / n + 1
            break
        }
        seq.append(words[i])
        
        if i > 0 {
            if words[i].first != words[i - 1].last {
                answer[0] = i % n + 1
                answer[1] = i / n + 1
                break
            }
        }
        
    }
    
    return answer
}
