//
//  P42748.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/07.
//

import Foundation

func solutionP42748(_ array: [Int], _ commands: [[Int]]) -> [Int] {
    var result: [Int] = []
    for command in commands {
        let startIndex = command[0] - 1
        let endIndex = command[1] - 1
        let index = command[2] - 1
        
        let temp = array[startIndex...endIndex]
        result.append(temp.sorted()[index])
    }
    
    return result
}
