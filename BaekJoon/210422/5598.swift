//
//  5598.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/22.
//

func solution5598() {
    print(UnicodeScalar("A"))
    let input = String(readLine()!)
    var output = ""
    input.forEach { char in
        var unicode = UnicodeScalar(String(char))!.value
        if unicode < 68 {
            unicode += 26
        }
        output.append(UnicodeScalar(unicode - 3)!.description)
    }
    print(output)
}

