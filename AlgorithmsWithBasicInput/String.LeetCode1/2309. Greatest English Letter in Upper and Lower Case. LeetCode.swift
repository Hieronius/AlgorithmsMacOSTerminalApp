//
//  2309. Greatest English Letter in Upper and Lower Case. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 21.09.2023.
//

import Foundation

/*
 2309. Greatest English Letter in Upper and Lower Case

 Given a string of English letters s, return the greatest English letter which occurs as both a lowercase and uppercase letter in s. The returned letter should be in uppercase. If no such letter exists, return an empty string.

 An English letter b is greater than another letter a if b appears after a in the English alphabet.

  

 Example 1:

 Input: s = "lEeTcOdE"
 Output: "E"
 Explanation:
 The letter 'E' is the only letter to appear in both lower and upper case.
 Example 2:

 Input: s = "arRAzFif"
 Output: "R"
 Explanation:
 The letter 'R' is the greatest letter to appear in both lower and upper case.
 Note that 'A' and 'F' also appear in both lower and upper case, but 'R' is greater than 'F' or 'A'.
 Example 3:

 Input: s = "AbCdEfGhIjK"
 Output: ""
 Explanation:
 There is no letter that appears in both lower and upper case.
  

 Constraints:

 1 <= s.length <= 1000
 s consists of lowercase and uppercase English letters.
 */

func greatestLetter(_ s: String) -> String {
    var lowerCased: Set<String> = []
    var upperCased: Set<String> = []
    
    s.forEach{
        $0.isLowercase ? lowerCased.insert(String($0).uppercased()) : upperCased.insert((String($0)))
    }
    
    return lowerCased.intersection(upperCased).sorted().last ?? ""
}
