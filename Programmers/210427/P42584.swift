//
//  P42584.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/27.
//

func solutionP42584(_ prices: [Int]) -> [Int] {
    var answer = [Int]()
    
    for i in 0..<prices.count {
        var count = 0
        prices[i + 1..<prices.count].forEach {
            if $0 >= prices[i] {
                count += 1
            }
        }
        answer.append(count)
    }
    
    return answer
}
