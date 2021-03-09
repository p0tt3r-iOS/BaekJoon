//
//  3052.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/09.
//

import Foundation

func solution3052() {
    var remains: [Int] = []
    for _ in 0...9 {
        let num = Int(readLine()!)!
        for remain in remains {
            if num % 42 != remain {
                remains.append(num % 42)
            }
        }
    }
    print(remains.count)
    
    
}
