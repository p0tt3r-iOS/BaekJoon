//
//  1978.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/21.
//

func solution1978() {
    let _ = Int(readLine()!)!
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var count = 0
    
    for i in input {
        var check = 0
        if i == 1 {
            continue
        }
        if i <= 2 {
            count += 1
        } else {
            for j in 2..<i {
                if i % j == 0 {
                    check += 1
                }
            }
            if check == 0 {
                count += 1
            }
        }
    }
    print(count)
}

// 가장 짧은 코드 길이
func solution1978_2() {
    readLine()
    print(readLine()!.split{$0==" "}.map{Int($0)!}.filter{(i:Int)in i != 1 && Array(2..<i).filter{i%$0==0}.count==0}.count)
}

// 소수를 가장 효율적으로 판별하는 알고리즘
func solution1978_3() {
    readLine()
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var count = 0
    
    for i in input {
        if i == 1 {
            count += 1
            continue
        }
        var j = 2
        while j*j <= i {
            if i % j == 0 {
                count += 1
                break
            }
            j += 1
        }
    }
    print(input.count - count)
}

func isPrime(_ n: Int) -> Bool {
    for i in 2..<n {
        // 제곱근 함수를 사용하면 아래와 같이 코드를 작성한다.
        // if i >= n.squareRoot()
        if i*i >= n {
            break
        }
        
        if n % i == 0 {
            return false
        }
    }
    
    return true
}
