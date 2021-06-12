//
//  P77884.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/06/11.
//

import Foundation

func solutionP77884(_ left: Int, _ right: Int) -> Int {
    var answer = 0
    for i in left...right {
        answer += Double(i) == pow(Double(i).squareRoot(), 2) ? -i : i
        print(answer)
    }
    return answer
}
