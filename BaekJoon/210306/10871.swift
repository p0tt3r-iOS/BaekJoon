//
//  10871.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/06.
//

import Foundation

func solution10871() {
    
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let nums = readLine()!.split(separator: " ").map { Int($0)! }
    
    for i in 0..<input[0] {
        if nums[i] < input[1] {
            print(nums[i], terminator: " ")
        }
    }
}

