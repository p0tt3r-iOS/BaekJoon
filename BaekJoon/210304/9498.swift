//
//  9498.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/04.
//

import Foundation


func solution9498() {
    let score = Int(readLine()!)!
    
    switch score {
    case 90...100:
        print("A")
    case 80...89:
        print("B")
    case 70...79:
        print("C")
    case 60...69:
        print("D")
    default:
        print("F")
    }
}


