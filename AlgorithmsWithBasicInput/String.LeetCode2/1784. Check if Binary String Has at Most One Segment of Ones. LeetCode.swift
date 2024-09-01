//
//  1784. Check if Binary String Has at Most One Segment of Ones. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 06.10.2023.
//

import Foundation

/*
 1784. Check if Binary String Has at Most One Segment of Ones
 
 Given a binary string s ​​​​​without leading zeros, return true​​​ if s contains at most one contiguous segment of ones. Otherwise, return false.

  

 Example 1:

 Input: s = "1001"
 Output: false
 Explanation: The ones do not form a contiguous segment.
 Example 2:

 Input: s = "110"
 Output: true
  

 Constraints:

 1 <= s.length <= 100
 s[i]​​​​ is either '0' or '1'.
 s[0] is '1'.
 */

func checkOnesSegment(_ s: String) -> Bool {
    var internalArray = Array(s)
    var isOnesContinuousSegment = true
    var foundZero = false
    
    if s.count <= 2 {
        return true
    }
    
    for element in internalArray {
        if element == "1" && foundZero == true {
            return false
        } else if element == "0" {
            foundZero = true
        }
        
    }
    return isOnesContinuousSegment
}
