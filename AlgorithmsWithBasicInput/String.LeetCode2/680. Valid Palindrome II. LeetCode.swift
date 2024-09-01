//
//  680. Valid Palindrome II. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 04.10.2023.
//

import Foundation

/*
 680. Valid Palindrome II

 Given a string s, return true if the s can be palindrome after deleting at most one character from it.

  

 Example 1:

 Input: s = "aba"
 Output: true
 Example 2:

 Input: s = "abca"
 Output: true
 Explanation: You could delete the character 'c'.
 Example 3:

 Input: s = "abc"
 Output: false
  

 Constraints:

 1 <= s.length <= 105
 s consists of lowercase English letters.
 */

func validPalindrome(_ s: String) -> Bool {
    var internalArray = Array(s)
    var doubleArray = internalArray
    var result = Bool()
    
    for (index, value) in internalArray.enumerated() {
        doubleArray.remove(at: index)
        print(doubleArray)
        if doubleArray == doubleArray.reversed() {
            return true
        } else {
            result = false
        }
        doubleArray = internalArray
        print("this is default doubleArray - \(doubleArray)")
    }
    return result
}

func validPalindrome1(_ s: String) -> Bool {
    let arr = Array(s)
    var lhs = 0, rhs = arr.count - 1
    
    while lhs < rhs {
        if arr[lhs] != arr[rhs] {
            return isValid(arr, lhs + 1, rhs) || isValid(arr, lhs, rhs - 1)
        }
        lhs += 1
        rhs -= 1
    }
    return true
}
// is palindrome
private func isValid(_ s: [Character], _ l: Int, _ r: Int) -> Bool {
    var lhs = l, rhs = r
    while lhs < rhs {
        if s[lhs] != s[rhs] { return false }
        lhs += 1
        rhs -= 1
    }
    return true
}
