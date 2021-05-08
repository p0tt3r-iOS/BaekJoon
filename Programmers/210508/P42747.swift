//
//  solution42747.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/08.
//

import Foundation

func solutionP42747(_ citations: [Int]) -> Int {
    let sorted = citations.sorted(by: >)
    for i in 0..<sorted.count {
        if i >= sorted[i] {
            return i
        }
    }
    
    return sorted.count
}
