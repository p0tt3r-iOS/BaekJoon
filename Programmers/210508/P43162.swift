//
//  P43162.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/29.
//

import Foundation

func solutionP43162(_ n: Int, _ computers: [[Int]]) -> Int {
    var visit = Array(repeating: false, count: n)
    var answer = 0
    
    func bfs(_ vertex: Int) {
        visit[vertex] = true
        for i in 0..<n {
            if computers[vertex][i] == 1 && visit[i] == false {
                bfs(i)
            }
        }
    }
    
    for i in 0..<n {
        if !visit[i] {
            answer += 1
            bfs(i)
        }
    }
    
    return answer
}
