//
//  P12919.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/18.
//

import Foundation

func solutionP12919(_ seoul: [String]) -> String {
    var ans = 0
    for (i, n) in seoul.enumerated() {
        if n == "Kim" {
            ans = i
            break
        }
    }
    return "김서방은 \(ans)에 있다"
}
