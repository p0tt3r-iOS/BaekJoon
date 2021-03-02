//
//  1001.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/02.
//

import Foundation

func solution1001() {
    let strings = readLine()!.split(separator: " ")
    
    let nums = strings.map{ Int($0)! }
    
    print(nums[0] - nums[1])
    
}
