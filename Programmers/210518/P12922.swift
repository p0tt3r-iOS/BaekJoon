//
//  P12922.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/18.
//

import Foundation

func solutionP12922(_ n: Int) -> String {
    var answer = ""
    for i in 1...n {
        if i % 2 == 0 {
            answer += "박"
        } else {
            answer += "수"
        }
    }
    return answer
}
