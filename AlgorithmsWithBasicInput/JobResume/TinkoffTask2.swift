//
//  TinkoffTask2.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 03.09.2023.
//

import Foundation

func getWord() -> Int {
    var hitCounter = 0
    
    var requiredWord = Array("sheriff")
    print(requiredWord)
    
    guard let input = readLine()?.lowercased() else {
        print("wrong input")
        return 0
    }
    var stringArray = Array(input)
    print(stringArray)
    
    // var stringToCompare = [String.Element]().sorted()
    
    while requiredWord.isEmpty == false {
        
        for char in stringArray {
            if char == "s" || char == "h" || char == "e" || char == "r" || char == "i" || char == "f" {
                print(char)
                // stringToCompare.append(char)
                stringArray.remove(at: stringArray.firstIndex(of: char)!)
                if requiredWord.contains(char) {
                    requiredWord.remove(at: requiredWord.firstIndex(of: char)!)
                    print(requiredWord)
                }
                
            }
        }
        if requiredWord.isEmpty {
            hitCounter += 1
            requiredWord = Array("sheriff")
            
        }
    }
    return hitCounter
}
