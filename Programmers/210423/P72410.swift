//
//  P72410.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/23.
//

import Foundation

func solutionP72410() {
    let new_id = String(readLine()!)
    var recommand = new_id.map { String($0) }
    var counts = [Int]()

    for a in recommand {
        var ascii = UnicodeScalar(a)!.value
        // 1
        if ascii >= 65 && ascii <= 90 {
            ascii += 32
            recommand[recommand.firstIndex(of: a)!] = String(UnicodeScalar(ascii)!)
        }
        // 2
        if !(ascii >= 97 && ascii <= 122) {
            if !(ascii >= 48 && ascii <= 57) {
                if !(a == "-" || a == "_" || a == ".") {
                    recommand.remove(at: recommand.firstIndex(of: a)!)
                }
            }
        }
    }
    for i in 1..<recommand.count {
        if recommand[i] == "." {
            if recommand[i - 1] == "." {
                counts.append(i)
            }
        }
    }
    while !counts.isEmpty {
        recommand.remove(at: counts.removeLast())
    }
    if recommand.first! == "." {
        recommand.removeFirst()
    } else if recommand.last! == "." {
        recommand.removeLast()
    }
    // 5
    if recommand.isEmpty {
        for _ in 0..<3 {
            recommand.append("a")
        }
    }
    // 6
    while recommand.count >= 16 || recommand.last! == "." {
        recommand.removeLast()
    }
    // 7
    while recommand.count <= 2 {
        recommand.append(recommand.last!)
    }
    print(recommand.reduce("", +))
}

