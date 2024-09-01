//
//  168. Excel Sheet Column Title. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 05.10.2023.
//

import Foundation

/*
 168. Excel Sheet Column Title

 Given an integer columnNumber, return its corresponding column title as it appears in an Excel sheet.

 For example:

 A -> 1
 B -> 2
 C -> 3
 ...
 Z -> 26
 AA -> 27
 AB -> 28
 ...
  

 Example 1:

 Input: columnNumber = 1
 Output: "A"
 Example 2:

 Input: columnNumber = 28
 Output: "AB"
 Example 3:

 Input: columnNumber = 701
 Output: "ZY"
  

 Constraints:

 1 <= columnNumber <= 231 - 1
 */

func convertToTitle(_ n: Int) -> String {
    var result: String = ""
    var n: Int = n
    while n > 0 {
        result = String(UnicodeScalar((n - 1) % 26 + 65)!) + result
        n = (n - 1) / 26
    }
    return result
}

