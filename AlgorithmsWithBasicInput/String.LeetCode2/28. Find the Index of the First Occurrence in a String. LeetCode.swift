//
//  28. Find the Index of the First Occurrence in a String. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 03.10.2023.
//

import Foundation

/*
 28. Find the Index of the First Occurrence in a String
 
 Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
 
 
 
 Example 1:
 
 Input: haystack = "sadbutsad", needle = "sad"
 Output: 0
 Explanation: "sad" occurs at index 0 and 6.
 The first occurrence is at index 0, so we return 0.
 Example 2:
 
 Input: haystack = "leetcode", needle = "leeto"
 Output: -1
 Explanation: "leeto" did not occur in "leetcode", so we return -1.
 
 
 Constraints:
 
 1 <= haystack.length, needle.length <= 104
 haystack and needle consist of only lowercase English characters.
 */

func strStr(_ haystack: String, _ needle: String) -> Int {
    guard haystack.count >= needle.count else { return -1 }
    let chars1 = Array(haystack)
    let chars2 = Array(needle)
    
    for i in 0..<chars1.count - chars2.count + 1 {
        var count = 0
        for j in 0..<chars2.count {
            if chars1[i + j] != chars2[j] { break }
            count += 1
        }
        if count == chars2.count {
            return i
        } else {
            continue
        }
    }
    return -1
}
