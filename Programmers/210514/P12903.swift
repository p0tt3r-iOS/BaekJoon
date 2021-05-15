//
//  P12903.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/15.
//

import Foundation

func solutionP12903(_ s: String) -> String {
    let half = s.count / 2
    return s.count % 2 == 0 ? s.map { String($0) }[half - 1...half].reduce("", +) : s.map { String($0) }[half]
}
