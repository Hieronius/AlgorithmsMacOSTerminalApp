//
//  3069. Distribute Elements Into Two Arrays I.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 29.03.2025.
//

import Foundation

// MARK: 3069. Distribute Elements Into Two Arrays I

let nums1 = [1,2,4] // [1, 2, 4]
let nums2 = [2,1,3]
let nums3 = [1,2,14,15]

class Solution {

	// MARK: Time Complexity O(1) + O(n) * O(1) + O(ar2.length) = O(n) - dominates
	// MARK: Space Complexity O(1) + O(n) = O(n) - dominates

	func resultArray(_ nums: [Int]) -> [Int] {

		// Time Complexity O(1)
		guard !nums.isEmpty else { return [] }

		// Space Complexity O(1)
		var lastElement1 = nums[0]

		// Space Complexity O(1)
		var lastElement2 = nums[1]

		// Space Complexity O(n)
		var ar1: [Int] = [lastElement1]

		// Space Complexity O(n)
		var ar2: [Int] = [lastElement2]

		// Time O(1) | Space O(1)
		let length = nums.count

		// Time Complexity O(n)
		for num in nums[2..<length] {

				// Time Complexity O(1)
				if lastElement1 > lastElement2 {
					ar1.append(num) // Time Complexity O(1)
					lastElement1 = num // Time Complexity O(1)
				} else {
					ar2.append(num) // Time Complexity O(1)
					lastElement2 = num // Time Complexity O(1)
				}
		}

		// Time Complexity O(ar2.count)
		return ar1 + ar2
	}
}

let solution = Solution()
print(solution.resultArray(nums1))
print(solution.resultArray(nums2))
print(solution.resultArray(nums3))
