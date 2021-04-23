//
//  12977.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/23.
//

func solutionP12977() {
    let nums = readLine()!.split(separator: " ").map { Int($0)! }
    var answer = 0
    var prime = 1
    
    for i in 0..<nums.count {
        for j in i + 1..<nums.count {
            for k in j + 1..<nums.count {
                let sum = nums[i] + nums[j] + nums[k]
                prime = 1
                for l in 2..<sum {
                    if l * l > sum {
                        break
                    }
                    if sum % l == 0 {
                        prime = 0
                        break
                    }
                }
                if prime == 1 {
                    answer += 1
                }
            }
        }
    }
    
    print(answer)
}

