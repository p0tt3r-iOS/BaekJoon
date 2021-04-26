//
//  1158.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/26.
//

func solution1158() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var arr = [Int]()
    var josepus = [Int]()
    for i in 1...input[0] {
        arr.append(i)
    }
    let k = input[1]
    var num = k
    while !arr.isEmpty {
        josepus.append(arr.remove(at: num - 1))
        num -= 1
        num += k
        while num > arr.count {
            num -= arr.count
            if arr.count == 0 {
                break
            }
        }
    }
    print("<", terminator: "")
    for k in josepus {
        if josepus.last! == k {
            print(k, terminator: "")
        } else {
            print(k, terminator: ", ")
        }
    }
    print(">", terminator: "")
}



