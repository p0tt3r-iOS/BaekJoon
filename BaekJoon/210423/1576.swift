//
//  1576.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/23.
//

func solution1576() {
    let n = Int(readLine()!)!
    let scores = readLine()!.split(separator: " ").map { Int($0)! }
    let m = scores.max()!
    var fixed = [Float]()
    scores.forEach { fixed.append(Float($0) / Float(m) * 100) }
    print(fixed.reduce(0, +) / Float(n))
}
