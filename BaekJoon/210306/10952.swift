//
//  solution10952.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/06.
//

import Foundation

func solution10952() {
    var nums = readLine()!.split(separator: " ").map { Int($0)! }
    while nums[0] != 0 && nums[1] != 0 {
        print(nums[0] + nums[1])
        nums = readLine()!.split(separator: " ").map { Int($0)! }
    }
}
