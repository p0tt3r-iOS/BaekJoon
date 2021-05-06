//
//  PscQ4.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/06.
//

import Foundation

func solutionPscQ4(_ s: String) -> [Int] {
    var string = s
    string.removeFirst()
    string.removeLast()
    let sortedArray = s.split(separator: "}").map { String($0) }.sorted { $0.count < $1.count}
    var result: [Int] = []
    sortedArray.forEach {
        let removal = ["{"]
        let filtered = $0.filter { !removal.contains(String($0)) }
        let nums = filtered.split(separator: ",").map { Int($0)! }
        nums.forEach {
            if !result.contains($0) {
                result.append($0)
            }
        }
    }
    
    return result
}
