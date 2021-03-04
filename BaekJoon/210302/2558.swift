//
//  2558.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/03/02.
//

import Foundation

func solution2558() {
    let num1: Int = Int(readLine()!)!
    let num2: Int = Int(readLine()!)!
    
    print(num1 * (num2 % 10))
    print(num1 * ((num2 % 100 - num2 % 10) / 10))
    print(num1 * (num2 / 100))
    print(num1 * num2)
}
