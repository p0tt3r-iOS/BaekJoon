//
//  9012.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/26.
//

func solution9012() {
    let n = Int(readLine()!)!
    for _ in 0..<n {
        var ps = [String.Element]()
        readLine()!.forEach { ps.append($0) }
        var countL = 0
        var countR = 0
        for i in ps {
            if i == "(" {
                countL += 1
            } else {
                countR += 1
            }
            if countR > countL {
                break
            }
        }
        print(countR == countL ? "YES" : "NO")
    }
}

