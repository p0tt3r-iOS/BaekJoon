//
//  P42587.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/27.
//

import Foundation

func solutionP42587(_ priorities:[Int], _ location:Int) -> Int {
    var order = 1
    var loc = location
    var pri = priorities

    while !pri.isEmpty {
        while pri[0] != pri.max()! {
            pri.append(pri.removeFirst())
            loc = loc == 0 ? pri.count - 1 : loc - 1
        }
        pri.removeFirst()
        if loc == 0 {
            return order
        }
        loc -= 1
        order += 1
    }
    return 0
}
