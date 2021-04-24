//
//  10866.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/24.
//

import Foundation

func solution10866() {
    let n = Int(readLine()!)!
    var deque = [Int]()
    for _ in 0..<n {
        let arr = readLine()!.split(separator: " ").map { String($0) }
        switch arr[0] {
        case "push_front":
            deque.insert(Int(arr[1])!, at: 0)
        case "push_back":
            deque.append(Int(arr[1])!)
        case "pop_front":
            print(deque.isEmpty ? -1 : deque.removeFirst())
        case "pop_back":
            print(deque.isEmpty ? -1 : deque.removeLast())
        case "size":
            print(deque.count)
        case "empty":
            print(deque.isEmpty ? 1 : 0)
        case "front":
            print(deque.isEmpty ? -1 : deque.first!)
        case "back":
            print(deque.isEmpty ? -1 : deque.last!)
        default:
            print()
        }
    }
}
