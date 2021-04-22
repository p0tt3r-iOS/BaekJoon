//
//  2562.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/22.
//

func solution2562_2() {
    var list = [Int]()
    var max = 0
    var maxCount = 0
    var count = 0
    for _ in 0..<9 {
        list.append(Int(readLine()!)!)
    }
    for i in list {
        count += 1
        if i > max {
            max = i
            maxCount = count
        }
    }
    print(max)
    print(maxCount)
}
