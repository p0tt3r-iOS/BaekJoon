//
//  Pskillcheck278560.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/06.
//

import Foundation

func solutionP278560(_ n: Int) -> Int {
    var answer: Int = 0
    var digits: [Int] = []
    var num = n
    while num >= 10 {
        digits.append(num % 10)
        num /= 10
    }
    digits.append(num % 10)
    
    answer = digits.reduce(0, +)
    
    return answer
}
