//
//  2443.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/22.
//

func solution2443() {
    let line = Int(readLine()!)!
    for i in 0..<line {
        print(String(repeating: " ", count: i) + String(repeating: "*", count: (line - i) * 2 - 1))
    }
}

