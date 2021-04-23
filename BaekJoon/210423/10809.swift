//
//  10809.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/23.
//

func solution10809() {
    let alphabet = "abcdefghijklmnopqrstuvwxyz".map { String($0) }
    let s = String(readLine()!).map { String($0) }
    for a in alphabet {
        if s.contains(a) {
            print(s.firstIndex(of: a)!, terminator: " ")
        } else {
            print(-1, terminator: " ")
        }
    }
}


