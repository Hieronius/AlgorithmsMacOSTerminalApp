//
//  905. Sort Array By Parity. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 18.10.2023.
//

import Foundation

/*
 
 905. Sort Array By Parity
 
 Given an integer array nums, move all the even integers at the beginning of the array followed by all the odd integers.
 
 Return any array that satisfies this condition.
 
 
 
 Example 1:
 
 Input: nums = [3,1,2,4]
 Output: [2,4,3,1]
 Explanation: The outputs [4,2,3,1], [2,4,1,3], and [4,2,1,3] would also be accepted.
 Example 2:
 
 Input: nums = [0]
 Output: [0]
 
 
 Constraints:
 
 1 <= nums.length <= 5000
 0 <= nums[i] <= 5000
 */

func sortArrayByParity(_ nums: [Int]) -> [Int] {
    
    if nums.count < 2 {
        return nums
    }
    
    var i = 0
    var j = nums.count - 1
    var evenArr = [Int]()
    var oddArr = [Int]()
    
    while i <= j {
        nums[i] % 2 == 0 ? evenArr.append(nums[i]) : oddArr.append(nums[i])
        print(i)
        if i == j {
            break
        }
        i += 1
        nums[j] % 2 == 0 ? evenArr.append(nums[j]) : oddArr.append(nums[j])
        print(j)
        j -= 1
    }
    
    return evenArr + oddArr
}
