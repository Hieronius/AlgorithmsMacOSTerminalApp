//
//  LeetCodeTwoSum.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 05.09.2023.
//

import Foundation

/*
 Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 You can return the answer in any order.

  

 Example 1:

 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
 
 Example 2:
 Input: nums = [3,2,4], target = 6
 Output: [1,2]
 
 Example 3:
 Input: nums = [3,3], target = 6
 Output: [0,1]
 */

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = 0
        var iteration = 0
        
        var firstIndex = 0
        var nextIndex = firstIndex + 1
        
        while iteration != nums.count {
            print("start over")
            while nextIndex != nums.count - 1 {
                result = nums[firstIndex] + nums[nextIndex]
                print(result)
                if result != target {
                    nextIndex += 1
                } else {
                    break
                }
                
            }
            iteration += 1
            firstIndex += 1
            nextIndex = firstIndex
            print("Another iteration")
        }
        
        print(firstIndex)
        print(nextIndex)
        return [firstIndex, nextIndex]
    }
}

let solution = Solution()
// print(solution.twoSum([3, 2, 3], 6))
