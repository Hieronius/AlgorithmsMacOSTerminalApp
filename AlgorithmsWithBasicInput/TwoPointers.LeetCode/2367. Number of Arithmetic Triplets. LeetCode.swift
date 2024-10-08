//
//  2367. Number of Arithmetic Triplets. LeetCode.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 11.10.2023.
//

import Foundation

/*
 
 2367. Number of Arithmetic Triplets

 You are given a 0-indexed, strictly increasing integer array nums and a positive integer diff. A triplet (i, j, k) is an arithmetic triplet if the following conditions are met:

 i < j < k,
 nums[j] - nums[i] == diff, and
 nums[k] - nums[j] == diff.
 Return the number of unique arithmetic triplets.

  

 Example 1:

 Input: nums = [0,1,4,6,7,10], diff = 3
 Output: 2
 Explanation:
 (1, 2, 4) is an arithmetic triplet because both 7 - 4 == 3 and 4 - 1 == 3.
 (2, 4, 5) is an arithmetic triplet because both 10 - 7 == 3 and 7 - 4 == 3.
 Example 2:

 Input: nums = [4,5,6,7,8,9], diff = 2
 Output: 2
 Explanation:
 (0, 2, 4) is an arithmetic triplet because both 8 - 6 == 2 and 6 - 4 == 2.
 (1, 3, 5) is an arithmetic triplet because both 9 - 7 == 2 and 7 - 5 == 2.
  

 Constraints:

 3 <= nums.length <= 200
 0 <= nums[i] <= 200
 1 <= diff <= 50
 nums is strictly increasing.
 */

func arithmeticTriplets(_ nums: [Int], _ diff: Int) -> Int {
    var counter = 0
    var i = 0
    var j = i + 1
    var k = j + 1
    
    // 1. first level of iterations where we move "i"
    while i < nums.count - 2 {
        
        // 2. second level of iterations where we move "j"
        while j < nums.count - 1 {
            
            // 3. third level of iterations where we move "k"
            while k < nums.count {
                if nums[j] - nums[i] == diff && nums[k] - nums[j] == diff {
                    print("found triplet")
                    counter += 1
                    k += 1
                } else {
                    k += 1
                }
            } // 3. end of third level of iterations
            
            j += 1
            k = j + 1
            
        } // 2. end of second level of iterations
        
        i += 1
        j = i + 1
        k = j + 1
        
    } // 1. end of first level of iterations
    
    return counter
}
