//
//  P43165.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/06.
//

import Foundation

func solutionP43165(_ numbers: [Int], _ target: Int) -> Int {
    var count = 0
    
    func dfs(index: Int, sum: Int) {
        if index == (numbers.count - 1) && sum == target {
            count += 1
            return
        }
        
        guard index + 1 < numbers.count else { return }
        
        dfs(index: index + 1, sum: sum + numbers[index + 1])
        dfs(index: index + 1, sum: sum - numbers[index + 1])
    }
    
    dfs(index: -1, sum: 0)
    
    return count
}
