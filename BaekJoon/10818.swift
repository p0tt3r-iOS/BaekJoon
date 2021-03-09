//
//  10818.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/09.
//

import Foundation

func solution10818() {

    readLine()
    let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
    print(nums.min()!, nums.max()!)
}
