//
//  P12930.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/20.
//

import Foundation

func solutionP12930(_ s: String) -> String {
    let words = s.components(separatedBy: " ").map { $0.enumerated().map { $0.offset % 2 == 0 ? $0.element.uppercased() : $0.element.lowercased()} }
    return words.map { $0.map { $0 }.joined() }.joined(separator: " ")
    
    
    
    
    
    
//    var words = s.split(separator: " ").map { String($0) }
//    for i in 0..<words.count {
//        var arr = Array(words[i]).map { String($0) }
//        for j in 0..<arr.count {
//            if j % 2 == 0 {
//                arr[j] = arr[j].uppercased()
//            } else {
//                arr[j] = arr[j].lowercased()
//            }
//        }
//        if i != 0 {
//            arr.insert(" ", at: 0)
//        }
//        words[i] = arr.reduce("", +)
//    }
//
//    return words.reduce("", +)
}
