//
//  2444.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/22.
//

func solution2444() {
    let line = Int(readLine()!)!
    for i in 1...line {
        print(String(repeating: " ", count: line - i) + String(repeating: "*", count: i * 2 - 1))
    }
    for j in 1..<line {
        print(String(repeating: " ", count: j) + String(repeating: "*", count: (line - j) * 2 - 1))
    }
}

