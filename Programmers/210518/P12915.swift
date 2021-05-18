//
//  P12915.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/17.
//

import Foundation

func solutionP12915(_ strings: [String], _ n: Int) -> [String] {
    let index = strings[0].index(strings[0].startIndex, offsetBy: n)
    return strings.sorted().sorted { $0[index] < $1[index] }
}
