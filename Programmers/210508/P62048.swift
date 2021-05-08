//
//  P62048.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/09.
//

import Foundation

func solution(_ w: Int, _ h: Int) -> Int64 {
    let g = gcd(w, h)
    return Int64(w * h - (w + h - g))
}

func gcd(_ a: Int, _ b: Int) -> Int {
    let r = a % b
    if r != 0 {
        return gcd(b, r)
    } else {
        return b
    }
}
