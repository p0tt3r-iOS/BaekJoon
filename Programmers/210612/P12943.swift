//
//  P12943.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/06/12.
//

func solutionP12943(_ num: Int) -> Int {
    var n = num
    var count = 0
    
    while n != 1 {
        if count == 500 {
            return -1
        }
        if n % 2 == 0 {
            n /= 2
        } else {
            n = n * 3 + 1
        }
        count += 1
    }
    return count
}
