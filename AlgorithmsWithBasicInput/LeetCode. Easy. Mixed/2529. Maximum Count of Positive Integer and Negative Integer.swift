//
//  2529. Maximum Count of Positive Integer and Negative Integer.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 18.03.2025.
//

import Foundation

// MARK: 2529. Maximum Count of Positive Integer and Negative Integer

let nums1 = [-2,-1,-1,1,2,3]
let nums2 = [-3,-2,-1,0,0,1,2]
let nums3 = [5,20,66,1314]

class Solution {

	// MARK: Time Complexity O(n) * O(1) + O(n) * O(1) = O(n)
	// MARK: Space COmplexity O(1)
	// nums.count = n

	func maximumCount(_ nums: [Int]) -> Int {

		var index = 0 // Space Complexity O(1)
		var neg = 0 // Space Complexity O(1)
		var pos = 0 // Space Complexity O(1)

		// Time Complexity O(n / 2) in average or O(n) in worst case
		while index < nums.count && nums[index] < 0 {
			neg += 1 // Time Complexity O(1)
			index += 1 // Time Complexity O(1)
		}

		// Time Complexity O(n)
		while index < nums.count {
			if nums[index] != 0 { // Time Complexity O(1)
				pos += 1 // Time Complexity O(1)
			}
			index += 1 // Time Complexity O(1)
		}
		return max(neg, pos) // Time Complexity O(1)
	}
}

let solution = Solution()
print(solution.maximumCount(nums1))
print(solution.maximumCount(nums2))
print(solution.maximumCount(nums3))
