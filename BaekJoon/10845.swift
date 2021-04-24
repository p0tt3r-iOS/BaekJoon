//
//  10845.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/24.
//

func solution10845() {
    var queue = [Int]()
    func push(_ n: Int) {
        queue.append(n)
    }
    func pop() {
        if queue.isEmpty {
            print(-1)
        } else {
        print(queue.removeFirst())
        }
    }
    func empty() {
        if queue.isEmpty {
            print(1)
        } else {
            print(0)
        }
    }
    func size() {
        print(queue.count)
    }
    func front() {
        if queue.isEmpty {
            print(-1)
        } else {
            print(queue.first!)
        }
    }
    func back() {
        if queue.isEmpty {
            print(-1)
        } else {
            print(queue.last!)
        }
    }
    let n = Int(readLine()!)!
    for _ in 0..<n {
        let arr = readLine()!.split(separator: " ")
        switch arr[0] {
        case "push":
            push(Int(arr[1])!)
        case "pop":
            pop()
        case "empty":
            empty()
        case "front":
            front()
        case "back":
            back()
        case "size":
            size()
        default:
            print(0)
        }
    }
}

