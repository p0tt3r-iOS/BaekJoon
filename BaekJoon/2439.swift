//
//  2439.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/05.
//

import Foundation

func solution2439() {
    let time = Int(readLine()!)!
    
    for i in 1...time {
        print("\(String(repeating: " ", count: time - i))\(String(repeating: "*", count: i))")
    }
}
