//
//  1037.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/23.
//

func solution1037() {
    readLine()
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    print(input.min()! * input.max()!)
}
