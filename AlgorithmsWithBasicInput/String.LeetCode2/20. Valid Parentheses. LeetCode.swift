//
//  20. Valid Parentheses. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 04.10.2023.
//

import Foundation

/*
 20. Valid Parentheses
 
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:

 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Every close bracket has a corresponding open bracket of the same type.
  

 Example 1:

 Input: s = "()"
 Output: true
 Example 2:

 Input: s = "()[]{}"
 Output: true
 Example 3:

 Input: s = "(]"
 Output: false
  

 Constraints:

 1 <= s.length <= 104
 s consists of parentheses only '()[]{}'.
 */

func isValid(_ s: String) -> Bool {
    guard s.count % 2 == 0 else { return false }
    
    var stack: [Character] = []
    
    for ch in s {
        switch ch {
        case "(": stack.append(")")
        case "[": stack.append("]")
        case "{": stack.append("}")
        default:
            if stack.isEmpty || stack.removeLast() != ch {
                return false
            }
        }
    }
    
    return stack.isEmpty
}
