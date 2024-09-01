//
//  1556. Thousand Separator. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 24.09.2023.
//

import Foundation

/*
 1556. Thousand Separator

 Given an integer n, add a dot (".") as the thousands separator and return it in string format.

  

 Example 1:

 Input: n = 987
 Output: "987"
 Example 2:

 Input: n = 1234
 Output: "1.234"
  

 Constraints:

 0 <= n <= 231 - 1
 */

func thousandSeparator(_ n: Int) -> String {
    var internalNumber = String(n)
    
    var index = internalNumber.index(internalNumber.endIndex, offsetBy: -3)
    
    if internalNumber.count > 3 {
        internalNumber.insert(".", at: index)
    }
    
    return internalNumber
}
