//
//  11022.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/05.
//

import Foundation

func solution11022() {
    let time = Int(readLine()!)!
    
    for i in 1...time {
        let nums = readLine()!.split(separator: " ").map { Int($0)! }
        print("Case #\(i): \(nums[0]) + \(nums[1]) = \(nums[0] + nums[1])")
    }
    
}
