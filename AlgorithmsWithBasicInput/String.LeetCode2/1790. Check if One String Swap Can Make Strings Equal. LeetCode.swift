//
//  1790. Check if One String Swap Can Make Strings Equal. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 02.10.2023.
//

import Foundation

/*
 1790. Check if One String Swap Can Make Strings Equal

 You are given two strings s1 and s2 of equal length. A string swap is an operation where you choose two indices in a string (not necessarily different) and swap the characters at these indices.

 Return true if it is possible to make both strings equal by performing at most one string swap on exactly one of the strings. Otherwise, return false.

  

 Example 1:

 Input: s1 = "bank", s2 = "kanb"
 Output: true
 Explanation: For example, swap the first character with the last character of s2 to make "bank".
 Example 2:

 Input: s1 = "attack", s2 = "defend"
 Output: false
 Explanation: It is impossible to make them equal with one string swap.
 Example 3:

 Input: s1 = "kelb", s2 = "kelb"
 Output: true
 Explanation: The two strings are already equal, so no string swap operation is required.
  

 Constraints:

 1 <= s1.length, s2.length <= 100
 s1.length == s2.length
 s1 and s2 consist of only lowercase English letters.
 */

func areAlmostEqual(_ s1: String, _ s2: String) -> Bool {
    var s1Ar = Array(s1)
    var s2Ar = Array(s2)
    
    if s1.sorted() != s2.sorted() {
        return false
        
    } else {
        for char in s1Ar {
            for index in 0...s1Ar.count-1 {
                s1Ar.swapAt(0, index)
                print(s1Ar)
                if s1Ar == s2Ar {
                    return true
                }
            }
        }
        return false
    }
}

func areAlmostEqual1(_ s1: String, _ s2: String) -> Bool {
    guard s1 != s2 else { return true }

        var count = 0
        
        for (index, value) in s1.enumerated() {
            if Array(s2)[index] != value {
                count += 1
            }
        }

        return count == 2 && s1.sorted() == s2.sorted()
    }
