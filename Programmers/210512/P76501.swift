//
//  P76501.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/12.
//

import Foundation

func solutionP76501(_ absolutes: [Int], _ signs: [Bool]) -> Int {
    var result = 0
    
    for i in 0..<absolutes.count {
        result += signs[i] ? absolutes[i] : -absolutes[i]
    }
    
    return result
}
