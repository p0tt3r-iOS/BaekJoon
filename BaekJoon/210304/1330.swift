//
//  1330.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/04.
//

import Foundation

func solution1330() {
    let input = readLine()!.split(separator: " ")
    let nums = input.map { Int($0)! }
    
    if nums[0] > nums[1] {
        print(">")
    } else if nums[0] == nums[1] {
        print("==")
    } else {
        print("<")
    }
    
}


