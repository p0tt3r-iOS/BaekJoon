//
//  PscQ3.swift
//  BaekJoon
//
//  Created by 하동훈 on 2021/05/06.
//

import Foundation

func solutionPscQ3(_ record: [String]) -> [String] {
    var commands: [String] = []
    var id: [String] = []
    var nickname: [String : String] = [:]
    var result: [String] = []
    
    record.forEach {
        let each = $0.split(separator: " ").map { String($0) }
        commands.append(each[0])
        id.append(each[1])
        if each[0] == "Enter" || each[0] == "Change" {
            nickname[each[1]] = each[2]
        }
    }
    
    for i in 0..<commands.count {
        switch commands[i] {
        case "Enter":
            let enter = "\(nickname[id[i]]!)님이 들어왔습니다."
            result.append(enter)
        case "Leave":
            let leave = "\(nickname[id[i]]!)님이 나갔습니다."
            result.append(leave)
        default:
            break
        }
    }
    
    return result
}
