//
//  SummerCodingQ2.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/09.
//

import Foundation

func solutionQ2(_ t: [Int], _ r: [Int]) -> [Int] {
    var result: [Int] = []
    var i = 0
    var time = t
    var timeTemp = t
    var queue: [Int] = []
    
    for i in 0..<t.count {
        if t[i] == timeTemp.min()! {
            queue.append(i)
            timeTemp.remove(at: timeTemp.firstIndex(of: t[i])!)
        }
    }
    
    var temp: [Int] = []
    for j in queue {
        if queue.count == 1 {
            result.append(queue[0])
            break
        }
        temp.append(j)
    }
    
    
    return result
}
