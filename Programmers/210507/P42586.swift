//
//  P42586.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/07.
//

import Foundation

func solutionP42586(_ progresses: [Int], _ speeds: [Int]) -> [Int] {
    var queue = progresses
    var speedQueue = speeds
    var output: [Int] = []
    
    while !queue.isEmpty {
        var count = 0
        for i in 0..<queue.count {
            queue[i] += speedQueue[i]
        }
        

        while queue[0] >= 100 {
            queue.removeFirst()
            speedQueue.removeFirst()
            count += 1
            
            if queue.isEmpty {
                break
            }
        }
        
        if count != 0 {
            output.append(count)
        }
    }
    
    return output
}
