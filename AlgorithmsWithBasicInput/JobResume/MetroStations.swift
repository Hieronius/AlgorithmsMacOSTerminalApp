//
//  MetroStations.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 26.09.2023.
//

import Foundation

func getShourtestPath(_ n: Int, _ i: Int, _ j: Int) -> Int {
    var halfCircleLength = n / 2
    var routine = [Int]()
    
    if n < 3 {
        return 0
    }

    if i < j {
        if Array(i...j).count > halfCircleLength {
            routine = Array(j...n)
            routine.append(i)
        } else {
            routine = Array(i...j)
        }
        
    } else {
        if Array(j...i).count > halfCircleLength {
            routine = Array(n...j)
            routine.append(j)
        } else {
            routine = Array(j...i)
        }
    }
    return routine.count - 2
}
