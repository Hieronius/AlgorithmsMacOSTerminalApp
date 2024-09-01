//
//  TinkoffTask1.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 03.09.2023.
//

import Foundation

func getMostExpensiveGun() -> Int {
    guard let input = readLine()?.split(separator: " ") else {
        print("Invalid input")
        return 0
    }
    
    guard let amountOfGunsAtStore = Int(input[0]), let joeCash = Int(input[1]) else {
        print("Invalid input")
        return 0
    }
    
    var arrayOfGuns = [Int]()
    
    guard let gunPricesInput = readLine()?.split(separator: " ") else {
        print("Invalid input")
        return 0
    }
    
    if gunPricesInput.count == amountOfGunsAtStore {
        
        for price in gunPricesInput {
            guard let gunPrice = Int(price) else {
                print("Invalid input")
                return 0
            }
            arrayOfGuns.append(gunPrice)
        }
    } else {
        print("invalid input")
        return 0
    }
    
    return arrayOfGuns.filter { $0 <= joeCash }.sorted().reversed().first ?? 0
}
