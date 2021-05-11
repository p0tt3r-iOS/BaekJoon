//
//  SummerCodingQ1.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/09.
//

import Foundation

func solutionQ1(_ code: String, _ day: String, _ data: [String]) -> [Int] {
    var result: [Int] = []
    
    let sorted = data.sorted { $0.suffix(10) < $1.suffix(10) }
    
    for each in sorted {
        var stock = each.split(separator: " ").map { String($0) }
        stock[0].removeFirst(6)
        stock[1].removeFirst(5)
        stock[2].removeFirst(5)
        if stock[1] == code && stock[2].hasPrefix(day) {
            result.append(Int(stock[0])!)
        }
    }
    
    return result
}
