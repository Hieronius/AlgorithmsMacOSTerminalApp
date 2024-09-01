//
//  Workshop.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 26.09.2023.
//

import Foundation

// MARK: Workshop

func getPalindrome(_ word: String) -> Int {
    var counter = 0
    var halfOfWordToChange = word.count / 2
    
    var immutableHalfOfWord = [String.Element]()
    var mutableHalfOfWord = [String.Element]()
    var arOfCharsToChange = [String.Element]()
    
    if word.count < 2 {
        return 0
        
    } else if word.count == 2 {
        return 1
        
    } else {
        if word.count % 2 == 0 {
            immutableHalfOfWord = Array(String(Array(word)[0..<halfOfWordToChange]))
            mutableHalfOfWord = Array(String(Array(word)[halfOfWordToChange..<word.count]))
            arOfCharsToChange = Array(String(immutableHalfOfWord.reversed()))
            
            for position in 1...halfOfWordToChange {
                if arOfCharsToChange[position-1] == mutableHalfOfWord[position-1] {
                    immutableHalfOfWord.append(arOfCharsToChange[position-1])
                } else {
                    immutableHalfOfWord.append(arOfCharsToChange[position-1])
                    counter += 1
                }
                if String(immutableHalfOfWord) == String(word.reversed()) {
                    break
                }
            }
            
        } else {
            immutableHalfOfWord = Array(String(Array(word)[0...halfOfWordToChange]))
            mutableHalfOfWord = Array(String(Array(word)[halfOfWordToChange..<word.count]))
            arOfCharsToChange = Array(String(immutableHalfOfWord.reversed()))
            
            for position in 1...halfOfWordToChange {
                if arOfCharsToChange[position] == mutableHalfOfWord[position] {
                    immutableHalfOfWord.append(arOfCharsToChange[position])
                } else {
                    immutableHalfOfWord.append(arOfCharsToChange[position])
                    counter += 1
                }
                if String(immutableHalfOfWord) == String(word.reversed()) {
                    break
                }
            }
        }
    }
    return counter
}
