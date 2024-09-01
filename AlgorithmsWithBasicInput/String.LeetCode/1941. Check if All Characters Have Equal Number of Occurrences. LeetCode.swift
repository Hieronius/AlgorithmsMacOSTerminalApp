//
//  1941. Check if All Characters Have Equal Number of Occurrences. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 17.09.2023.
//

import Foundation

/*
 
 1941. Check if All Characters Have Equal Number of Occurrences

 Given a string s, return true if s is a good string, or false otherwise.

 A string s is good if all the characters that appear in s have the same number of occurrences (i.e., the same frequency).

  

 Example 1:

 Input: s = "abacbc"
 Output: true
 Explanation: The characters that appear in s are 'a', 'b', and 'c'. All characters occur 2 times in s.
 Example 2:

 Input: s = "aaabb"
 Output: false
 Explanation: The characters that appear in s are 'a' and 'b'.
 'a' occurs 3 times while 'b' occurs 2 times, which is not the same number of times.
  

 Constraints:

 1 <= s.length <= 1000
 s consists of lowercase English letters.
 */

func areOccurencesEqual(_ s: String) -> Bool {
    Set(s.reduce(into: [:]) { $0[$1, default: 0] += 1 }.values).count == 1
}

func areOccurencesEqual1(_ s: String) -> Bool {
    var map: [Character: Int] = [:]
    for char in s { map[char] = map[char, default: 0] + 1 }
    return Set(map.values).count <= 1
}

func areOccurencesEqual2(_ s: String) -> Bool {
    var dict: [Character: Int] = [:]
    var value = 0
    for ch in s {
        dict[ch, default: 0] += 1
        value = dict[ch, default: 0]
    }
    return (Array(dict.values).filter { $0 == value }.count == Array(dict.values).count)
}

