//
//  709. To Lower Case. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 10.09.2023.
//

import Foundation

/*
 709. To Lower Case
 Given a string s, return the string after replacing every uppercase letter with the same lowercase letter.

  

 Example 1:

 Input: s = "Hello"
 Output: "hello"
 Example 2:

 Input: s = "here"
 Output: "here"
 Example 3:

 Input: s = "LOVELY"
 Output: "lovely"
  

 Constraints:

 1 <= s.length <= 100
 s consists of printable ASCII characters.
 Accepted
 451.2K
 Submissions
 545.5K

 */

func toLowerCase(_ str: String) -> String {
        var result = ""
        for s in str {
            if let ascii = s.asciiValue, ascii >= 65 && ascii <= 90 {
                result.append(Character(UnicodeScalar(ascii + 32)))
            } else {
                result.append(s)
            }
        }
        return result
    }

// or

func toLowerCase1(_ str: String) -> String {
    str.lowercased()
}
