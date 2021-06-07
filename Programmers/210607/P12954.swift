//
//  solutionP12954.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/06/07.
//

func solutionP12954(_ x: Int, _ n: Int) -> [Int64] {
    var array: [Int64] = []
    for i in 1...n {
        array.append(Int64(x * i))
    }
    return array
}
