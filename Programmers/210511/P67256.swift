//
//  P67256.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/11.
//

import Foundation

func solutionP67256(_ numbers: [Int], _ hand: String) -> String {
    func addL(_ number: Int) {
        result.append("L")
        lPosition = number
    }
    func addR(_ number: Int) {
        result.append("R")
        rPosition = number
    }
    
    let isRight = hand != "left" ? true : false
    
    var lPosition = 10
    var rPosition = 12
    
    var result = ""

    for num in numbers {
        let number = num == 0 ? 11 : num
        if [1, 4, 7].contains(number) {
            addL(number)
            continue
        }
        if [3, 6, 9].contains(number) {
            addR(number)
            continue
        }
        
        let lHandDistance = abs((number - lPosition) / 3 + (number - lPosition) % 3)
        let rHandDistance = abs((number - rPosition) / 3 + (number - rPosition) % 3)
        
        if lHandDistance < rHandDistance {
            addL(number)
        } else if lHandDistance > rHandDistance {
            addR(number)
        } else {
            if isRight {
                addR(number)
            } else {
                addL(number)
            }
        }
    }
    
    return result
}
