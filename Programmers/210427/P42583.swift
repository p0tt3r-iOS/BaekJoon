//
//  P42583.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/04/27.
//

import Foundation

func solutionP42583(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var count = 1
    var countForEach = [Int]()
    var waitingTrucks = truck_weights
    var trucksOnBridge = [Int]()
    
    while !(waitingTrucks.isEmpty && trucksOnBridge.isEmpty) {
        if let comingTruck = waitingTrucks.first {
            if (trucksOnBridge.reduce(0, +) + comingTruck) <= weight {
                trucksOnBridge.append(waitingTrucks.removeFirst())
                countForEach.append(bridge_length)
            }
        }
        count += 1
        countForEach = countForEach.map { $0 - 1 }

        if countForEach[0] == 0 {
            trucksOnBridge.removeFirst()
            countForEach.removeFirst()
        }
    }
    
    return count
}
