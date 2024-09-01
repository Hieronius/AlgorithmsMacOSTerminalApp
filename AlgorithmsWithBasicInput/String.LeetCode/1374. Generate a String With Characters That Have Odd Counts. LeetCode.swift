//
//  1374. Generate a String With Characters That Have Odd Counts. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 16.09.2023.
//

import Foundation

/*
 
 1374. Generate a String With Characters That Have Odd Counts
 
 Given an integer n, return a string with n characters such that each character in such string occurs an odd number of times.

 The returned string must contain only lowercase English letters. If there are multiples valid strings, return any of them.

  

 Example 1:

 Input: n = 4
 Output: "pppz"
 Explanation: "pppz" is a valid string since the character 'p' occurs three times and the character 'z' occurs once. Note that there are many other valid strings such as "ohhh" and "love".
 Example 2:

 Input: n = 2
 Output: "xy"
 Explanation: "xy" is a valid string since the characters 'x' and 'y' occur once. Note that there are many other valid strings such as "ag" and "ur".
 Example 3:

 Input: n = 7
 Output: "holasss"
  

 Constraints:

 1 <= n <= 500
 */


func generateTheString(_ n: Int) -> String {
    // 1. check n to have any values, if not return an empty string
    // 2. if n is even return string from "a" characters and "n" count
    // 3. if n is odd return string from "a" characters and "n-1" count + "b"
    return n == 0 ? "" :
    (n % 2 == 1 ?
     String(Array(repeating: "a", count: n)) :
     String(Array(repeating: "a", count: n - 1)) + "b")
}

// print(generateTheString(78))
