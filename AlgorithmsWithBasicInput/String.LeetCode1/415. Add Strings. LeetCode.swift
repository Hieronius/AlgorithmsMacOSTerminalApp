//
//  415. Add Strings. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 25.09.2023.
//

import Foundation

/*
 415. Add Strings

 Given two non-negative integers, num1 and num2 represented as string, return the sum of num1 and num2 as a string.

 You must solve the problem without using any built-in library for handling large integers (such as BigInteger). You must also not convert the inputs to integers directly.

  

 Example 1:

 Input: num1 = "11", num2 = "123"
 Output: "134"
 Example 2:

 Input: num1 = "456", num2 = "77"
 Output: "533"
 Example 3:

 Input: num1 = "0", num2 = "0"
 Output: "0"
  

 Constraints:

 1 <= num1.length, num2.length <= 104
 num1 and num2 consist of only digits.
 num1 and num2 don't have any leading zeros except for the zero itself.
 */

func addStrings(_ num1: String, _ num2: String) -> String {
    var s1 = Array(num1)
    var s2 = Array(num2)
    var i1 = s1.count - 1
    var i2 = s2.count - 1
    var carry = 0
    var output = ""
    while i1 >= 0 || i2 >= 0 {
        var sum = carry
        if i1 >= 0 {
            sum += s1[i1].val
            i1 -= 1
        }
        
        if i2 >= 0 {
            sum += s2[i2].val
            i2 -= 1
        }
        carry = sum / 10
        output += "\(sum % 10)"
    }
    if carry >= 1 {
        output += "\(carry)"
    }
    return String(output.reversed())
}
extension Character {
    var val: Int {
        return Int(self.asciiValue! - Character("0").asciiValue!)
    }
}
