//
//  2053. Kth Distinct String in an Array. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 19.09.2023.
//

import Foundation

/* 2053. Kth Distinct String in an Array

 A distinct string is a string that is present only once in an array.

 Given an array of strings arr, and an integer k, return the kth distinct string present in arr. If there are fewer than k distinct strings, return an empty string "".

 Note that the strings are considered in the order in which they appear in the array.

  

 Example 1:

 Input: arr = ["d","b","c","b","c","a"], k = 2
 Output: "a"
 Explanation:
 The only distinct strings in arr are "d" and "a".
 "d" appears 1st, so it is the 1st distinct string.
 "a" appears 2nd, so it is the 2nd distinct string.
 Since k == 2, "a" is returned.
 Example 2:

 Input: arr = ["aaa","aa","a"], k = 1
 Output: "aaa"
 Explanation:
 All strings in arr are distinct, so the 1st string "aaa" is returned.
 Example 3:

 Input: arr = ["a","b","a"], k = 3
 Output: ""
 Explanation:
 The only distinct string is "b". Since there are fewer than 3 distinct strings, we return an empty string "".
  

 Constraints:

 1 <= k <= arr.length <= 1000
 1 <= arr[i].length <= 5
 arr[i] consists of lowercase English letters.
 */

func kthDistinct(_ arr: [String], _ k: Int) -> String {
    var lookup: [String: Int] = [:]
    for s in arr { lookup[s, default: 0] += 1 }
    
    let distinctArr = arr.filter { lookup[$0] == 1 }
    return distinctArr.count >= k ? distinctArr[k-1] : ""
    }

func kthDistinct1(_ arr: [String], _ k: Int) -> String {

        let dictionary = Dictionary(grouping: arr, by: {$0}).filter { $1.count == 1 }.keys
        var temp = 0

        for each in arr {
            if dictionary.contains(each) {
                temp += 1
                if temp == k {
                    return each
                }
            }
        }

        return ""
    }

func kthDistinct2(_ arr: [String], _ k: Int) -> String {
        
        var strs = (repeat: [String](), unique: [String](), copy: arr)

        while !strs.copy.isEmpty {
            
            let removeValue = strs.copy.removeFirst()

            if strs.copy.contains(removeValue) || strs.repeat.contains(removeValue) {
                strs.repeat.append(removeValue)
            } else {
                strs.unique.append(removeValue)
            }
        }
        
        guard strs.unique.indices.contains(k - 1) else { return "" }

        return strs.unique[k - 1]
    }
