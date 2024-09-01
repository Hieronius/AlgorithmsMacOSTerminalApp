//
//  1796. Second Largest Digit in a String. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 25.09.2023.
//

import Foundation

/*
 
 1796. Second Largest Digit in a String
 
 Given an alphanumeric string s, return the second largest numerical digit that appears in s, or -1 if it does not exist.

 An alphanumeric string is a string consisting of lowercase English letters and digits.

  

 Example 1:

 Input: s = "dfa12321afd"
 Output: 2
 Explanation: The digits that appear in s are [1, 2, 3]. The second largest digit is 2.
 Example 2:

 Input: s = "abc1111"
 Output: -1
 Explanation: The digits that appear in s are [1]. There is no second largest digit.
  

 Constraints:

 1 <= s.length <= 500
 s consists of only lowercase English letters and/or digits.
 */
func secondHighest(_ s: String) -> Int {
    
    var arrayOfNumbers = [Int]()
        
    
    for char in s {
        if char.isNumber {
            arrayOfNumbers.append(Int(String(char))!)
        }
    }
    if Array(Set(arrayOfNumbers.sorted())).count > 1 {
        return (Array(Set(arrayOfNumbers.sorted()))[1])
    } else {
        return -1
    }
}
