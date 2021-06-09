//
//  P12948.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/06/09.
//

import Foundation

func solutionP12948(_ n: String) -> String {
    let num = Array(n)
    var answer: String = ""
    for i in 0..<num.count {
        if i < num.count - 4 {
            answer.append("*")
        } else {
            answer.append(num[i])
        }
    }
    return answer
}
