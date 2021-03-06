//
//  10951.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/06.
//

import Foundation

func solution10951() {
    while let line = readLine() {
        let nums = line.split(separator: " ").map { Int($0)! }
        print(nums[0] + nums[1])
    }
}
