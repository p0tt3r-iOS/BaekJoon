//
//  P12901.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/14.
//

import Foundation

func solutionP12901(_ a: Int, _ b: Int) -> String {
    let month = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let date = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    
    return a == 1 ? date[b % 7] : date[(month[0..<a].reduce(0, +) + b) % 7]
}
