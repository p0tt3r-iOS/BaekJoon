//
//  P12926.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/19.
//

import Foundation

func solutionP12926(_ s: String, _ n: Int) -> String {
    let lower = "abcdefghijklmnopqrstuvwxyz"
    let upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let l = Array(lower)
    let u = Array(upper)
    var answer = ""
    
    for i in s {
        if l.contains(i) {
            var index = l.firstIndex(of: i)! + n
            if index > 25 {
                index -= 25
            }
            answer += String(l[index])
        } else if u.contains(i) {
            var index = u.firstIndex(of: i)! + n
            if index > 26 {
                index -= 25
            }
            answer += String(u[index])
        } else {
            answer += String(i)
        }
    }
    
    return answer
}
