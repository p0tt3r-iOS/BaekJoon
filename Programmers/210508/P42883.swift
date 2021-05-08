//
//  P42883.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/08.
//

import Foundation

func solutionP42883(_ number: String, _ k: Int) -> String {
    let numArr: [Character] = number.map { $0 }
    var stack: [Character] = []
    var delete: Int = 0
    var i: Int = 0
    
    while delete < k && i < numArr.count {
        guard let last = stack.last else {
            stack.append(numArr[i])
            i += 1
            continue
        }
        
        if last < numArr[i] {
            stack.removeLast()
            delete += 1
            continue
        }
        
        stack.append(numArr[i])
        i += 1
    }
    
    if delete >= k {
        stack.append(contentsOf: numArr[i...])
    }
    
    if i >= numArr.count {
        return stack[0..<numArr.count - (k)].reduce("") { "\($0)\($1)" }
    }
    
    return stack.reduce("") { "\($0)\($1)" }
}


