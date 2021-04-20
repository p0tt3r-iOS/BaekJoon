//
//  2609.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/20.
//

//func solution2609() {
//    let inputs = readLine()!.split(separator: " ").map { Int($0)! }
//    var commonDivisor: [Int] = []
//    var firstDivisor: [Int] = []
//    var secondDivisor: [Int] = []
//
//    for input in inputs {
//        for j in 0..<input {
//            if input % (j + 1) == 0 && input == inputs[0] {
//                firstDivisor.append(j + 1)
//            } else if input % (j + 1) == 0 {
//                secondDivisor.append(j + 1)
//            }
//        }
//    }
//
//    for devisor in secondDivisor {
//        if firstDivisor.contains(devisor) {
//            commonDivisor.append(devisor)
//        }
//    }
//
//    print(commonDivisor.max() ?? 0)
//    print((inputs[0] * inputs[1]) / (commonDivisor.max() ?? 1))
//}

func solution2609() {
    func gcd(_ a: Int, _ b: Int) -> Int {
        return (a % b != 0) ? gcd(b, a % b) : b
    }
    
    let inputs = readLine()!.split(separator: " ").map { Int($0)! }
    print(gcd(inputs[0], inputs[1]))
    print(inputs[0] * inputs[1] / gcd(inputs[0], inputs[1]))
}
