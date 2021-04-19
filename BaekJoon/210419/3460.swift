//
//  3460.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/19.
//

func solution3460() {
    let count = Int(readLine()!)!

    for _ in 0..<count {
        let decimal = Int(readLine()!)!
        var order = 0
        var testCase = String(decimal, radix: 2)
        while !testCase.isEmpty {
            if testCase.removeLast() == "1" {
                print(order, terminator: " ")
            }
            order += 1
        }
        print()
    }
}

