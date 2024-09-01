//
//  125. Valid Palindrome. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 01.10.2023.
//

import Foundation

/*
 125. Valid Palindrome
 
 A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

 Given a string s, return true if it is a palindrome, or false otherwise.

  

 Example 1:

 Input: s = "A man, a plan, a canal: Panama"
 Output: true
 Explanation: "amanaplanacanalpanama" is a palindrome.
 Example 2:

 Input: s = "race a car"
 Output: false
 Explanation: "raceacar" is not a palindrome.
 Example 3:

 Input: s = " "
 Output: true
 Explanation: s is an empty string "" after removing non-alphanumeric characters.
 Since an empty string reads the same forward and backward, it is a palindrome.
  

 Constraints:

 1 <= s.length <= 2 * 105
 s consists only of printable ASCII characters.
*/

func isPalindrome(_ s: String) -> Bool {
    let alphabet = (97...122).map({Character(UnicodeScalar($0))}).map {String($0)}
    let numbers = (Array(0...9)).map {String($0)}
    var result = ""

    for char in s {
        if alphabet.contains(char.lowercased()) || numbers.contains(char.lowercased()) {
            result.append(char)
        }
    }
    return result.lowercased() == String(result.lowercased().reversed())
}

