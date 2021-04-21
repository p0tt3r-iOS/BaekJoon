//
//  2693.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/21.
//

func solution2693() {
    let time = Int(readLine()!)!
    
    for _ in 0..<time {
        let input = readLine()!.split(separator: " ").map({ Int($0)! }).sorted(by: >)
        print(input[2])
    }
}



