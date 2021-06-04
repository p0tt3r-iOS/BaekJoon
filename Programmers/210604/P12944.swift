//
//  P12944.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/06/04.
//

func solutionP12944(_ arr: [Int]) -> Double {
    return Double(arr.reduce(0, +)) / Double(arr.count)
}
