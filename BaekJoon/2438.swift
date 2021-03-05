//
//  2438.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/05.
//

import Foundation

func solution2438() {
    let time = Int(readLine()!)!
    
    for i in 1...time {
        for _ in 1...i {
            print("*", terminator:"")
        }
        print("")
    }
}
