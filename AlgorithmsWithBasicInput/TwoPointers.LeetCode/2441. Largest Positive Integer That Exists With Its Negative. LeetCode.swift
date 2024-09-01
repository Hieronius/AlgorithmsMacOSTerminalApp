//
//  2441. Largest Positive Integer That Exists With Its Negative. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 25.10.2023.
//

/*
2441. Largest Positive Integer That Exists With Its Negative

 Given an integer array nums that does not contain any zeros, find the largest positive integer k such that -k also exists in the array.

 Return the positive integer k. If there is no such integer, return -1.

  

 Example 1:

 Input: nums = [-1,2,-3,3]
 Output: 3
 Explanation: 3 is the only valid k we can find in the array.
 Example 2:

 Input: nums = [-1,10,6,7,-7,1]
 Output: 7
 Explanation: Both 1 and 7 have their corresponding negative values in the array. 7 has a larger value.
 Example 3:

 Input: nums = [-10,8,6,7,-2,-3]
 Output: -1
 Explanation: There is no a single valid k, we return -1.
  

 Constraints:

 1 <= nums.length <= 1000
 -1000 <= nums[i] <= 1000
 nums[i] != 0
*/

func findMaxK(_ nums: [Int]) -> Int {
    var biggestNumber = -1
    var i = 0
    var j = 1
    
    while i < nums.count - 1 {
        while j < nums.count {
            if nums[i] + nums[j] == 0 && abs(nums[i]) > biggestNumber {
                biggestNumber = abs(nums[i])
            }
            j += 1
        }
        i += 1
        j = i + 1
    }
    return biggestNumber
}
