//
//  10950.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/05.
//

import Foundation

func solution10950() {
    let time = Int(readLine()!)!
    
    for _ in 1...time {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let a = input[0]
        let b = input[1]
        print(a + b)
    }
    
    
}
