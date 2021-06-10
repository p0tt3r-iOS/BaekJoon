//
//  P12940.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/06/10.
//

func solutionP12940(_ n: Int, _ m: Int) -> [Int] {
    var answer: [Int] = []
    var a: Int = n
    var b: Int = m
    
    while b != 0 {
        let t = a % b
        a = b
        b = t
    }
    
    answer.append(a)
    answer.append(n * m / a)
    
    return answer
}
