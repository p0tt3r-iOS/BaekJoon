//
//  10828.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/24.
//

func solution10828() {
    struct Stack {
        private var storage: [Int] = []
        
        mutating func push(_ n: Int) {
            storage.append(n)
        }
        
        @discardableResult
        mutating func pop() -> Int? {
            storage.popLast()
        }
        
        func isEmpty() {
            if storage.isEmpty {
                print(1)
            } else {
                print(0)
            }
        }
        
        func size() {
            print(storage.count)
        }
        
        func top() {
            if storage.isEmpty {
                print(-1)
            } else {
                print(storage.last!)
            }
        }
    }
    
    var stack = Stack()
    let n = Int(readLine()!)!
    for _ in 0..<n {
        let command = readLine()!
        let num = command.filter { ("0"..."9").contains($0) }
        if command.hasPrefix("push") {
            stack.push(Int(num)!)
        } else if command.hasPrefix("pop") {
            if let pop = stack.pop() {
                print(pop)
            } else {
                print(-1)
            }
        } else if command.hasPrefix("size") {
            stack.size()
        } else if command.hasPrefix("empty") {
            stack.isEmpty()
        } else if command.hasPrefix("top") {
            stack.top()
        }
    }
}

