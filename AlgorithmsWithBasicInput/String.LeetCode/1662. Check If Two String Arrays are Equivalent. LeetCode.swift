//
//  1662. Check If Two String Arrays are Equivalent. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 09.09.2023.
//

import Foundation

/*
 
 1662. Check If Two String Arrays are Equivalent
 
 Given two string arrays word1 and word2, return true if the two arrays represent the same string, and false otherwise.

 A string is represented by an array if the array elements concatenated in order forms the string.

  

 Example 1:

 Input: word1 = ["ab", "c"], word2 = ["a", "bc"]
 Output: true
 Explanation:
 word1 represents string "ab" + "c" -> "abc"
 word2 represents string "a" + "bc" -> "abc"
 The strings are the same, so return true.
 Example 2:

 Input: word1 = ["a", "cb"], word2 = ["ab", "c"]
 Output: false
 Example 3:

 Input: word1  = ["abc", "d", "defg"], word2 = ["abcddefg"]
 Output: true
  

 Constraints:

 1 <= word1.length, word2.length <= 103
 1 <= word1[i].length, word2[i].length <= 103
 1 <= sum(word1[i].length), sum(word2[i].length) <= 103
 word1[i] and word2[i] consist of lowercase letters.
 
 */

func arrayStringAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
    word1.reduce("",+) == word2.reduce("",+)
}


//print(arrayStringAreEqual(["ab", "c"], ["a", "bc"]))
//print(arrayStringAreEqual(["a", "cb"], ["ab", "c"]))
//print(arrayStringAreEqual(["abc", "d", "defg"], ["abcddefg"]))
