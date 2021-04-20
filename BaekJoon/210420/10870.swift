//
//  10870.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/20.
//

func solution10870() {
    let n = Int(readLine()!)!
    
    var first = 0
    var second = 1
    var temp = 0
    
    if n == 0 {
        print(0)
    } else {
        for _ in 0..<n - 1 {
            temp = first + second
            
            if first > second {
                second = temp
            } else {
                first = temp
            }
        }
        if first > second {
            print(first)
        } else {
            print(second)
        }
    }
}



