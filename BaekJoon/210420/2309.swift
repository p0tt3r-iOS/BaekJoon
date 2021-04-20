//
//  2309.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/20.
//

func solution2309() {
    var tall: [Int] = []
    for _ in 0..<9 {
        tall.append(Int(readLine()!)!)
    }
    
    var answer: [Int] = []
    
    while !(answer.reduce(0, +) == 100) {
        var copyTall = tall
        answer = []
        for i in 0..<7 {
            let index = Int.random(in: 0...(8 - i))
            answer.append(copyTall.remove(at: index))
        }
    }
    
    answer.sort()
    answer.forEach { print($0) }
}
