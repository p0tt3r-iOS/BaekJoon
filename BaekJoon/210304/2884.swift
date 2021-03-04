//
//  2884.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/04.
//

import Foundation

func solution2884() {

    let time = readLine()!.split(separator: " ").map { Int($0)! }
    var sum = time[0] * 60 + time[1]
    
    if sum < 45 {
        sum = 24 * 60 + time[1] - 45
    } else {
        sum -= 45
    }
    
    let hour = sum / 60
    let minute = sum % 60
    
    print("\(hour) \(minute)")
    
}

