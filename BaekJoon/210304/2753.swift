//
//  2753.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/04.
//

import Foundation

func solution2753() {
    let year = Int(readLine()!)!
    
    if year % 400 == 0 {
        print(1)
    } else if year % 4 == 0 && year % 100 != 0 {
        print(1)
    } else {
        print(0)
    }
}


