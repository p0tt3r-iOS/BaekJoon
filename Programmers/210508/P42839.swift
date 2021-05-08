//
//  P42839.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/08.
//

import Foundation

func solutionP42839(_ numbers: String) -> Int {
    var count = 0
    let arr: [String] = numbers.compactMap { String($0) }
    let combedArr = Set(combination(numbers.count, arr).compactMap { Int($0) })
    
    for i in combedArr {
        print("\(i) prime: \(prime(i))")
        count += prime(i) ? 1 : 0
    }
    
    return count
}

func combination(_ length: Int, _ array: [String]) -> Set<String> {
    if length == 1 { return Set(array) }
    
    var result = Set<String>()
    for i in 0..<array.count {
        let num = array[i]
        var tempArray = array
        tempArray.remove(at: i)
        
        let afterComb = combination(length - 1, tempArray)
        let afterCombArr = afterComb.compactMap { num + $0 }
        result = result.union(afterComb)
        result = result.union(afterCombArr)
        print(result)
    }
    
    return result
}

func prime(_ num: Int) -> Bool {
    if num < 2 {
        return false
    }
    for i in 2..<num {
        if i * i > num {
            break
        }
        
        if num % i == 0 {
            return false
        }
    }
    
    return true
}
