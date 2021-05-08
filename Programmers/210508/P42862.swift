//
//  P42862.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/08.
//

import Foundation

func solutionP42862(_ n: Int, _ lost: [Int], _ reserve: [Int]) -> Int {
    var result = n - lost.count
    var duplicate = [Int]()
    let filteredLost = lost.filter {
        if reserve.contains($0) {
            duplicate.append($0)
        }
        return !reserve.contains($0)
    }
    var filterdReserve = reserve.filter { !duplicate.contains($0) }
    result += duplicate.count
    
    for i in filteredLost {
        if filterdReserve.isEmpty {
            break
        }
        if filterdReserve.contains(i - 1) {
            result += 1
            filterdReserve.remove(at: filterdReserve.firstIndex(of: i - 1)!)
        } else if filterdReserve.contains(i + 1) {
            result += 1
            filterdReserve.remove(at: filterdReserve.firstIndex(of: i + 1)!)
        }
    }
    
    return result
}
