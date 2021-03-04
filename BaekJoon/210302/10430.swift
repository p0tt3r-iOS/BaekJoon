//
//  10430.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/02.
//

import Foundation

func solution10430() {
    let strings = readLine()!.split(separator: " ")

    let nums = strings.map{ Int($0)! }
    let a = nums[0]
    let b = nums[1]
    let c = nums[2]

    print((a + b) % c)
    print(((a % c) + (b % c)) % c)
    print((a * b) % c)
    print(((a % c) * (b % c)) % c)
}
