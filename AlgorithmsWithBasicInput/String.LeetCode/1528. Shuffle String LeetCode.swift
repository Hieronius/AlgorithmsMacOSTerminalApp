//
//  1528. Shuffle String LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 08.09.2023.
//

import Foundation

/*
 1528. Shuffle String

 You are given a string s and an integer array indices of the same length. The string s will be shuffled such that the character at the ith position moves to indices[i] in the shuffled string.

 Return the shuffled string.
 
 Input: s = "codeleet", indices = [4,5,6,7,0,2,1,3]
 Output: "leetcode"
 Explanation: As shown, "codeleet" becomes "leetcode" after shuffling.
 Example 2:

 Input: s = "abc", indices = [0,1,2]
 Output: "abc"
 Explanation: After shuffling, each character remains in its position.
  

 Constraints:

 s.length == indices.length == n
 1 <= n <= 100
 s consists of only lowercase English letters.
 0 <= indices[i] < n
 All values of indices are unique.
 */

extension Dictionary {
    public init(keys: [Key], values: [Value]) {
        precondition(keys.count == values.count)

        self.init()
 
        for (index, key) in keys.enumerated() {
            self[key] = values[index]
        }
    }
}

func restoreString(_ s: String, _ indices: [Int]) -> String {
    let dict = Dictionary(keys: indices, values: Array(s))
    var res = String()
    
    for key in dict.keys.sorted() {
        res.append(dict[key]!)
    }
    
    return res
}
