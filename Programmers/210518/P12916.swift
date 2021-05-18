//
//  P12916.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/18.
//

import Foundation

func solutionP12916(_ s: String) -> Bool {
    return s.filter { $0 == "y" || $0 == "Y"}.count == s.filter { $0 == "p" || $0 == "P"}.count ? true : false
}
