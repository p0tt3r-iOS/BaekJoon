//
//  P70128.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/11.
//

import Foundation

func solution70128(_ a: [Int], _ b: [Int]) -> Int {
    var result = 0
    for i in 0..<a.count {
        result += a[i] * b[i]
    }
    return result
}
