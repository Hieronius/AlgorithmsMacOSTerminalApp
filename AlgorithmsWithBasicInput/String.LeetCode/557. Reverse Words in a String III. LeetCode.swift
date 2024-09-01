//
//  557. Reverse Words in a String III. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 10.09.2023.
//

import Foundation

/*
 557. Reverse Words in a String III

 
 Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.

  

 Example 1:

 Input: s = "Let's take LeetCode contest"
 Output: "s'teL ekat edoCteeL tsetnoc"
 Example 2:

 Input: s = "God Ding"
 Output: "doG gniD"
  

 Constraints:

 1 <= s.length <= 5 * 104
 s contains printable ASCII characters.
 s does not contain any leading or trailing spaces.
 There is at least one word in s.
 All the words in s are separated by a single space.
 */


func reverseWords(_ s: String) -> String {
    String(s.split(separator: " ").map {Array($0).reversed()}.joined(separator: " "))
}

func reverseWords1(_ s: String) -> String {
    var string = Array(s.utf8)
            var i = 0

            for j in string.indices {
                if string[j] == UInt8(ascii: " ") {
                    string[i ..< j].reverse()
                    i = j + 1
                }
            }
            string[i...].reverse()

            return String(decoding: string, as: Unicode.UTF8.self)
}
