//
//  P43162.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/29.
//

import Foundation

func solutionP43162(_ n: Int, _ computers: [[Int]]) -> Int {
    var networks = [[Int]]()
    for i in 0..<n {
        for j in 0..<computers[i].count {
            if computers[i][j] == 1 {
                if networks.isEmpty {
                    networks.append([j])
                } else {
                    var num: Int?
                    var count = 0
                    var removal = [Int]()
                    for k in 0..<networks.count{
                        if networks[k].contains(i) {
                            count += 1
                            if count > 1 {
                                removal.insert(k, at: 0)
                            } else {
                                num = k
                            }
                        }
                    }
                    for index in removal {
                        networks.remove(at: index)
                    }
                    if let num = num {
                        networks[num].append(j)
                    } else {
                        networks.append([j])
                    }
                }
            }
        }
    }
    
    return networks.count
}
