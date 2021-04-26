//
//  9093.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/26.
//

func solution9093() {
    let t = Int(readLine()!)!
    for _ in 0..<t {
        var test = readLine()!.split(separator: " ").map { String($0) }
        for i in 0..<test.count {
            test[i] = String(test[i].reversed())
        }
        test.forEach {
            print($0, terminator: " ")
        }
        print()
    }
}

