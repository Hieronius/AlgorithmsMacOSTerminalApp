//
//  2278. Percentage of Letter in String. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 17.09.2023.
//

import Foundation

/*
 2278. Percentage of Letter in String
 
 
 Given a string s and a character letter, return the percentage of characters in s that equal letter rounded down to the nearest whole percent.
 
 
 
 Example 1:
 
 Input: s = "foobar", letter = "o"
 Output: 33
 Explanation:
 The percentage of characters in s that equal the letter 'o' is 2 / 6 * 100% = 33% when rounded down, so we return 33.
 Example 2:
 
 Input: s = "jjjj", letter = "k"
 Output: 0
 Explanation:
 The percentage of characters in s that equal the letter 'k' is 0%, so we return 0.
 
 
 Constraints:
 
 1 <= s.length <= 100
 s consists of lowercase English letters.
 letter is a lowercase English letter.
 */

func percentageLetter(_ s: String, _ letter: Character) -> Int {
    var array = Array(s)
    var amountOfLetters = s.count
    var amountOfSelectedChar = array.filter {$0 == letter}.count
    if amountOfSelectedChar == 0 {
        return 0
    }
    var result = (Double(amountOfSelectedChar) / Double(amountOfLetters)) * 100
    return Int(result)
}
