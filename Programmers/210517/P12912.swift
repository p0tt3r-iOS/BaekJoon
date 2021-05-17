//
//  P12912.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/17.
//

import Foundation

func solutionP12412(_ a: Int, _ b: Int) -> Int64 {
    var answer = 0
    if a < b {
        for i in a...b {
            answer += i
        }
    } else {
        for i in b...a {
            answer += i
        }
    }
    
    return Int64(answer)
}
