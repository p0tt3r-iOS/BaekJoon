//
//  P12918.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/18.
//

import Foundation

func solutionP12918(_ s: String) -> Bool {
    guard s.count == 4 || s.count == 6 else { return false }
    for i in s {
        guard let _ = Int(String(i)) else { return false }
    }
    return true
}
