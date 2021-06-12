//
//  P12947.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/06/12.
//

func solutionP12947(_ x: Int) -> Bool {
    var n = x
    var sum = 0
    while n != 0 {
        sum += n % 10
        n /= 10
    }
    
    return x % sum == 0
}
