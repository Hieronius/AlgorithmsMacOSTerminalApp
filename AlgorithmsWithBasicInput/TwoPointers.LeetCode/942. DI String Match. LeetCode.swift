//
//  942. DI String Match. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 13.10.2023.
//

import Foundation

/*
 942. DI String Match

 A permutation perm of n + 1 integers of all the integers in the range [0, n] can be represented as a string s of length n where:

 s[i] == 'I' if perm[i] < perm[i + 1], and
 s[i] == 'D' if perm[i] > perm[i + 1].
 Given a string s, reconstruct the permutation perm and return it. If there are multiple valid permutations perm, return any of them.

  

 Example 1:

 Input: s = "IDID"
 Output: [0,4,1,3,2]
 Example 2:

 Input: s = "III"
 Output: [0,1,2,3]
 Example 3:

 Input: s = "DDI"
 Output: [3,2,0,1]
  

 Constraints:

 1 <= s.length <= 105
 s[i] is either 'I' or 'D'.
 */

func diStringMatch(_ s: String) -> [Int] {
    var lowest = 0
    var upper = s.count
    var output: [Int] = []
    
    for ch in s {
        if(ch == "D") {
            output.append(upper)
            upper -= 1
        } else {
            output.append(lowest)
            lowest += 1
        }
    }
    
    output.append(lowest)
    
    return output
}
