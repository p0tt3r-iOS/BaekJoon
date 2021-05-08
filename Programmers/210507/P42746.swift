//
//  ㅖ42746.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/07.
//

import Foundation

func solutionP42746(_ numbers: [Int]) -> String {
    let sorted = numbers.sorted {
        Int("\($0)\($1)")! > Int("\($1)\($0)")!
    }
    if sorted[0] == 0 { return "0" }
    let result = sorted.reduce("") { $0 + "\($1)" }
    
    return result
}
