//
//  3300. Minimum Element After Replacement With Digit Sum.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 27.02.2025.
//

import Foundation

//let nums1 = [10,12,13,14]
//let nums2 = [1,2,3,4]
//let nums3 = [999,19,199]

class Solution {

	// MARK: Time O(1)
	// MARK: Space O(n)

	func minElement(_ nums: [Int]) -> Int {

		var leftIndex = 0

		// Space O(1-100) or O(n) in worst case
		var sums: [Int] = []

		// Time O(1-100) or O(1) because input data set can't exeed 100 elements
		while leftIndex < nums.count {

			var sum = 0

			// Time O(1 - 5) due to 10^4 constraints so maximum of 5 digits
			for char in String(nums[leftIndex]) {
				guard let digit = Int(String(char)) else { return -1 }
				sum += digit
			}
			sums.append(sum)
			leftIndex += 1
		}

		// Time O(1-100) or O(1) because input data set can't exeed 100 elements
		return sums.min() ?? -1
	}
}

//let solution = Solution()
//print(solution.minElement(nums1))
//print(solution.minElement(nums2))
//print(solution.minElement(nums3))
