//
//  1966.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/27.
//

func solution1966() {
    let n = Int(readLine()!)!
    for _ in 0..<n {
        let test = readLine()!.split(separator: " ").map { Int($0)! }
        var pri = readLine()!.split(separator: " ").map { Int($0)! }
        var loc = test[1]
        var count = 1
        
        while !pri.isEmpty {
            while pri[0] < pri.max()! {
                pri.append(pri.removeFirst())
                loc = loc == 0 ? pri.count - 1 : loc - 1
            }
            pri.removeFirst()
            if loc == 0 {
                print(count)
                break
            }
            count += 1
            loc -= 1
        }
    }
}

