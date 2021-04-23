//
//  2576.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/23.
//

func solution2576() {
    var array: [Int] = []
    for _ in 0..<7 {
        let input = Int(readLine()!)!
        if input % 2 == 1 {
            array.append(input)
        }
    }
    if array.isEmpty {
        print(-1)
    } else {
        print(array.reduce(0, +))
        print(array.min()!)
    }
}


