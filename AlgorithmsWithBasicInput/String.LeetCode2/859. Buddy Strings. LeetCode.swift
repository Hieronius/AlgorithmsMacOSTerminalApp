//
//  859. Buddy Strings. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 08.10.2023.
//

import Foundation

/*
 859. Buddy Strings
 
 Given two strings s and goal, return true if you can swap two letters in s so the result is equal to goal, otherwise, return false.
 
 Swapping letters is defined as taking two indices i and j (0-indexed) such that i != j and swapping the characters at s[i] and s[j].
 
 For example, swapping at indices 0 and 2 in "abcd" results in "cbad".
 
 
 Example 1:
 
 Input: s = "ab", goal = "ba"
 Output: true
 Explanation: You can swap s[0] = 'a' and s[1] = 'b' to get "ba", which is equal to goal.
 Example 2:
 
 Input: s = "ab", goal = "ab"
 Output: false
 Explanation: The only letters you can swap are s[0] = 'a' and s[1] = 'b', which results in "ba" != goal.
 Example 3:
 
 Input: s = "aa", goal = "aa"
 Output: true
 Explanation: You can swap s[0] = 'a' and s[1] = 'a' to get "aa", which is equal to goal.
 
 
 Constraints:
 
 1 <= s.length, goal.length <= 2 * 104
 s and goal consist of lowercase letters.
 */

func buddyStrings(_ s: String, _ goal: String) -> Bool {
    if s.count > 1, s.count != goal.count { return false }
    
    if s == goal {
        // Set removes duplicate elements
        // So, if there are any duplicate in the array
        // then only swap would be possible
        return Set(s).count != s.count
    }
    
    var arrS = Array(s)
    var arrGoal = Array(goal)
    
    var swapLetter = ""
    var index = 0
    
    for i in 0..<arrS.count {
        if arrS[i] != arrGoal[i] {
            if swapLetter.isEmpty {
                swapLetter = String(arrS[i])
                index = i
            } else {
                arrS[index] = arrS[i]
                arrS[i] = Character(swapLetter)
                return arrS == arrGoal
            }
        }
    }
    
    return false
}
