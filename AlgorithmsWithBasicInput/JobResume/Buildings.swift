//
//  Buildings.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 26.09.2023.
//

import Foundation

var example = [2, 0, 1, 1, 0, 1, 0, 2, 1, 2]

func getLongestPath2(_ buildings: [Int]) -> Int {
    var biggestCounter = 0
    var arIndex = 0
    
    for (index, value) in buildings.enumerated() {
        
            print(index)
            if value == 1 {
                var leftIndex = index - 1
                var rightIndex = index + 1
                var counter = 0
                
                while leftIndex > 0 || rightIndex < buildings.count-1 {
                    
                    print(leftIndex)
                    print(rightIndex)
                    
                    if buildings[leftIndex...index].contains(2) {
                        counter = buildings[leftIndex...index].count
                        if biggestCounter < counter {
                            biggestCounter = counter
                            counter = 0
                        }
                    }
                    
                    if buildings[index...rightIndex].contains(2) {
                        counter = buildings[index...rightIndex].count
                        if biggestCounter < counter {
                            biggestCounter = counter
                            counter = 0
                        }
                    }
                    leftIndex -= 1
                    rightIndex += 1
                }
                
            }
        }
    
    return biggestCounter
}
