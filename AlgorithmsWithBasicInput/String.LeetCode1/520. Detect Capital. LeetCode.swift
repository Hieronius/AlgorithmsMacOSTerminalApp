//
//  520. Detect Capital. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 23.09.2023.
//

import Foundation

/*
 520. Detect Capital

 We define the usage of capitals in a word to be right when one of the following cases holds:

 All letters in this word are capitals, like "USA".
 All letters in this word are not capitals, like "leetcode".
 Only the first letter in this word is capital, like "Google".
 Given a string word, return true if the usage of capitals in it is right.

  

 Example 1:

 Input: word = "USA"
 Output: true
 Example 2:

 Input: word = "FlaG"
 Output: false
  

 Constraints:

 1 <= word.length <= 100
 word consists of lowercase and uppercase English letters.
 */

func detectCapitalUse(_ word: String) -> Bool {
    var cap = 0
    for c in word {
        cap += c.isUppercase ? 1 :  0
    }
    return cap == word.count || cap == 0 || (cap == 1 && word.first!.isUppercase)
}
