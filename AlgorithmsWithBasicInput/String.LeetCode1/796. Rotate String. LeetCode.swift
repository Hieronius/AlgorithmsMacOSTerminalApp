//
//  796. Rotate String. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 23.09.2023.
//

import Foundation

/*
 796. Rotate String

 Given two strings s and goal, return true if and only if s can become goal after some number of shifts on s.

 A shift on s consists of moving the leftmost character of s to the rightmost position.

 For example, if s = "abcde", then it will be "bcdea" after one shift.
  

 Example 1:

 Input: s = "abcde", goal = "cdeab"
 Output: true
 Example 2:

 Input: s = "abcde", goal = "abced"
 Output: false
  

 Constraints:

 1 <= s.length, goal.length <= 100
 s and goal consist of lowercase English letters.
 */

func rotateString(_ s: String, _ goal: String) -> Bool {
    var string = Array(s).map {String($0)}
    var goalAr = Array(goal).map {String($0)}
    
    for attempt in 1...s.count {
        var char = string.remove(at: 0)
        string.append(char)
        if string == goalAr {
            return true
        }
    }
    return false
}
