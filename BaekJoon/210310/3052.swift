//
//  3052.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/09.
//

import Foundation

func solution3052() {
    var remains = [Int]()
    var forCount = [Int]()
    for _ in 0...9 {
        let num = Int(readLine()!)! % 42
        remains.append(num)
    }
    
    for remain in remains {
        forCount.append(remain)
        for i in 0..<forCount.count - 1 {
            if forCount[i] == remain {
                forCount.removeLast()
            }
        }
    }
    
    print(forCount.count)
    
    
    
}

