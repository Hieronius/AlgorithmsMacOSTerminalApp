//
//  283. Move Zeroes. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 28.10.2023.
//

import Foundation

/* 283. Move Zeroes

 Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

 Note that you must do this in-place without making a copy of the array.

  

 Example 1:

 Input: nums = [0,1,0,3,12]
 Output: [1,3,12,0,0]
 Example 2:

 Input: nums = [0]
 Output: [0]
  

 Constraints:

 1 <= nums.length <= 104
 -231 <= nums[i] <= 231 - 1
  

 Follow up: Could you minimize the total number of operations done?
 */
var array1 = [0,1,0,3,12]
var array2 = [0]
func moveZeroes(_ nums: inout [Int]) {
        var i = 0 // increment value with every iteration
        var j = 0 // used to store the index of the first non-swapped zero.
        
        if nums.count > 1 {
            while i < nums.count-1 {
                if nums[i] == 0 && nums [i+1] != 0 {
                    nums.swapAt(j, i+1)
                    i += 1
                    j += 1
                } else if nums[i] == 0 && nums[i+1] == 0 {
                    i += 1 //j is not increased, because no swap occurs yet even if we have zero elements.
                } else if nums[i] != 0 && nums[i+1] != 0 {
                    i += 2 //jump the next element since it is not 0
                    j += 2
                } else {
                    i += 1
                    j += 1
                }
                
            }
        }
    }
