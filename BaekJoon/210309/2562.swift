//
//  2562.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/09.
//

import Foundation

func solution2562() {
    var count = 1
    var nums: [Int] = []
    for _ in 0..<9 {
        nums.append(Int(readLine()!)!)
    }
    let max = nums.max()!
    print(max)
    for i in nums {
        if max == i {
            print(count)
        }
        count += 1
    }
}
