//
//  1880. Check if Word Equals Summation of Two Words. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 19.09.2023.
//

import Foundation

/*
 1880. Check if Word Equals Summation of Two Words

 The letter value of a letter is its position in the alphabet starting from 0 (i.e. 'a' -> 0, 'b' -> 1, 'c' -> 2, etc.).

 The numerical value of some string of lowercase English letters s is the concatenation of the letter values of each letter in s, which is then converted into an integer.

 For example, if s = "acb", we concatenate each letter's letter value, resulting in "021". After converting it, we get 21.
 You are given three strings firstWord, secondWord, and targetWord, each consisting of lowercase English letters 'a' through 'j' inclusive.

 Return true if the summation of the numerical values of firstWord and secondWord equals the numerical value of targetWord, or false otherwise.

  

 Example 1:

 Input: firstWord = "acb", secondWord = "cba", targetWord = "cdb"
 Output: true
 Explanation:
 The numerical value of firstWord is "acb" -> "021" -> 21.
 The numerical value of secondWord is "cba" -> "210" -> 210.
 The numerical value of targetWord is "cdb" -> "231" -> 231.
 We return true because 21 + 210 == 231.
 Example 2:

 Input: firstWord = "aaa", secondWord = "a", targetWord = "aab"
 Output: false
 Explanation:
 The numerical value of firstWord is "aaa" -> "000" -> 0.
 The numerical value of secondWord is "a" -> "0" -> 0.
 The numerical value of targetWord is "aab" -> "001" -> 1.
 We return false because 0 + 0 != 1.
 Example 3:

 Input: firstWord = "aaa", secondWord = "a", targetWord = "aaaa"
 Output: true
 Explanation:
 The numerical value of firstWord is "aaa" -> "000" -> 0.
 The numerical value of secondWord is "a" -> "0" -> 0.
 The numerical value of targetWord is "aaaa" -> "0000" -> 0.
 We return true because 0 + 0 == 0.
  

 Constraints:

 1 <= firstWord.length, secondWord.length, targetWord.length <= 8
 firstWord, secondWord, and targetWord consist of lowercase English letters from 'a' to 'j' inclusive.
 */

func isSumEqual(_ firstWord: String, _ secondWord: String, _ targetWord: String) -> Bool {
    let alphabet = (97...122).map({Character(UnicodeScalar($0))})
    var dict = [Character: String]()
    
    for (index, char) in alphabet.enumerated() {
        dict[char] = String(index)
    }
    
    var sumOfFirstWord = ""
    var sumOfSecondWord = ""
    var sumOfTargetWord = ""
    
    for char in firstWord {
        sumOfFirstWord += dict[char]!
    }
    
    for char in secondWord {
        sumOfSecondWord += dict[char]!
    }
    
    for char in targetWord {
        sumOfTargetWord += dict[char]!
    }
    
    return Int(sumOfFirstWord)! + Int(sumOfSecondWord)! ==  Int(sumOfTargetWord)!
}

func isSumEqual1(_ firstWord: String, _ secondWord: String, _ targetWord: String) -> Bool {
        
        let letters = "abcdefghij"
        var firstNum = firstWord, secondNum = secondWord, targetNum = targetWord

        for (index, value) in letters.enumerated() {
            firstNum = firstNum.replacingOccurrences(of: String(value), with: String(index))
            secondNum = secondNum.replacingOccurrences(of: String(value), with: String(index))
            targetNum = targetNum.replacingOccurrences(of: String(value), with: String(index))
        }
        
        return (Int(firstNum)! + Int(secondNum)!) == Int(targetNum)!
    }

func isSumEqual2(_ firstWord: String, _ secondWord: String, _ targetWord: String) -> Bool {
        convertStringToInt(firstWord) + convertStringToInt(secondWord) == convertStringToInt(targetWord)
    }

    func convertStringToInt(_ str: String) -> Int {
        Int(str.map { Array("abcdefghij").firstIndex(of: $0)! }.map { String($0) }.reduce("", +)) ?? 0
    }
