//
//  P64061.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/11.
//

import Foundation

func solutionP64061(_ board: [[Int]], _ moves: [Int]) -> Int {
    var stack: [Int] = []
    var result = 0
    var copy = board
    for move in moves {
        for i in 0..<board.count {
            if copy[i][move - 1] != 0 {
                if stack.last == copy[i][move - 1] {
                    stack.removeLast()
                    result += 2
                } else {
                    stack.append(copy[i][move - 1])
                }
                copy[i][move - 1] = 0
                break
            }
        }
    }
    
    return stack.count
}
