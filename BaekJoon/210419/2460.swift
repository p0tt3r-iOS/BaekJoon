//
//  2460.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/19.
//

func solution2460() {
    var max = 0
    var passenger = 0
    for _ in 0..<10 {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let goOut = input[0]
        let comeIn = input[1]
        
        passenger -= goOut
        passenger += comeIn
        
        if passenger > max {
            max = passenger
        }
    }
    print(max)
}
