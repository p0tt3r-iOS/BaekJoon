//
//  14681.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/04.
//

import Foundation

func solution14681() {
    let x = Int(readLine()!)!
    let y = Int(readLine()!)!
    let position = (x, y)
    
    switch position {
    case let (x, y) where x > 0 && y > 0:
        print(1)
    case let (x, y) where x < 0 && y > 0:
        print(2)
    case let (x, y) where x < 0 && y < 0:
        print(3)
    default:
        print(4)
    }
}
