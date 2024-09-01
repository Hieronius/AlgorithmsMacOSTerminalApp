//
//  2609. Find the Longest Balanced Substring of a Binary String. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 01.10.2023.
//

import Foundation

/*
 
 2609. Find the Longest Balanced Substring of a Binary String
 
 You are given a binary string s consisting only of zeroes and ones.

 A substring of s is considered balanced if all zeroes are before ones and the number of zeroes is equal to the number of ones inside the substring. Notice that the empty substring is considered a balanced substring.

 Return the length of the longest balanced substring of s.

 A substring is a contiguous sequence of characters within a string.

  

 Example 1:

 Input: s = "01000111"
 Output: 6
 Explanation: The longest balanced substring is "000111", which has length 6.
 Example 2:

 Input: s = "00111"
 Output: 4
 Explanation: The longest balanced substring is "0011", which has length 4.
 Example 3:

 Input: s = "111"
 Output: 0
 Explanation: There is no balanced substring except the empty substring, so the answer is 0.
  

 Constraints:

 1 <= s.length <= 50
 '0' <= s[i] <= '1'
 */

func findTheLongestBalancedSubstring(_ s: String) -> Int {
    var res = ""
    
    for i in 0..<s.count/2{
        res.insert("0", at: res.startIndex)
        res.insert("1", at: res.endIndex)
        
        if !s.contains(res){
            return res.count - 2
        }
    }
    
    return res.count
}
