//
//  P12917.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/18.
//

import Foundation

func solutionP12917(_ s: String) -> String {
    return s.sorted(by: >).reduce("") { $0 + "\($1)" }
}
