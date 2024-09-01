//
//  541. Reverse String II. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 25.09.2023.
//

import Foundation

/*
 541. Reverse String II

 Given a string s and an integer k, reverse the first k characters for every 2k characters counting from the start of the string.

 If there are fewer than k characters left, reverse all of them. If there are less than 2k but greater than or equal to k characters, then reverse the first k characters and leave the other as original.

  

 Example 1:

 Input: s = "abcdefg", k = 2
 Output: "bacdfeg"
 Example 2:

 Input: s = "abcd", k = 2
 Output: "bacd"
  

 Constraints:

 1 <= s.length <= 104
 s consists of only lowercase English letters.
 1 <= k <= 104
 
 */

func reverseStr(_ s: String, _ k: Int) -> String {
    var str = Array(s)
    var i = 0
    var skip = false
    while i < str.count {
        guard !skip else {
            skip = false
            i = i + k
            continue
        }
        let end = i + k - 1 < str.count ? i + k - 1 : str.count - 1
        let reversed = str[i...end].reversed()
        for char in reversed {
            str[i] = char
            i += 1
        }
        skip = true
    }
    return String(str)
    
}
