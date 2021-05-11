//
//  P77484.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/11.
//

import Foundation

func solutionP77484(_ lottos: [Int], _ win_nums: [Int]) -> [Int] {
    var count = 0
    var empty = 0
    
    lottos.forEach {
        if win_nums.contains($0) {
            count += 1
        }
        if $0 == 0 {
            empty += 1
        }
    }

    
    return [rank(count + empty), rank(count)]
}


func rank(_ match: Int) -> Int {
    switch match {
    case ...1:
        return 6
    case 2:
        return 5
    case 3:
        return 4
    case 4:
        return 3
    case 5:
        return 2
    default:
        return 1
    }
}
