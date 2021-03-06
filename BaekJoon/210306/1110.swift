//
//  1110.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/06.
//

import Foundation

func solution1110() {
    var count = 0
    var num = Int(readLine()!)!
    let setNum = num
    
    repeat {
        var a = num / 10
        let b = num % 10
        a = a + b
        num = (b % 10) * 10 + a % 10
        count += 1
    } while num != setNum
    
    print(count)
}
