//
//  10872.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/22.
//

func solution10872() {
    let n = Int(readLine()!)!
    var factorial = 1
    
    if n == 0 {
        print(factorial)
    } else {
        for i in 1...n {
            factorial *= i
        }
        print(factorial)
    }
    
}


