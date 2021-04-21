//
//  1292.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/21.
//

func solution1292() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var array = [Int]()
    for i in 1...45 {
        for _ in 1...i {
            array.append(i)
        }
        if array.count >= input[1] {
            break
        }
    }
    print(array[input[0] - 1...input[1] - 1].reduce(0, +))
}

