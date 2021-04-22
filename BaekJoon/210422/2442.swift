//
//  2442.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/22.
//

func solution2442() {
    let line = Int(readLine()!)!
    for i in 1...line {
        for _ in 0..<line - i {
            print(" ", terminator: "")
        }
        for _ in 0..<i * 2 - 1 {
            print("*", terminator: "")
        }
        print()
    }
}
