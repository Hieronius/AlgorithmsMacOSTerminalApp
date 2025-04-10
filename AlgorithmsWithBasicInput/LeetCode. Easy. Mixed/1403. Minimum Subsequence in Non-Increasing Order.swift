//
//  1403. Minimum Subsequence in Non-Increasing Order.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 29.03.2025.
//

import Foundation

// MARK: 1403. Minimum Subsequence in Non-Increasing Order

let nums1 = [4,3,10,9,8]
let nums2 = [4,4,7,6,7]

class Solution {

	// MARK: Time Complexity O(n) + O(n log n) + O(n) = O(n log n)
	// MARK: Space Complexity O(n) + O(1) = O(n)

	func minSubsequence(_ nums: [Int]) -> [Int] {

		// Time Complexity O(n) | Space O(1)
		var sum = nums.reduce(0, +)

		// Time Complexity O(n log n) | Space O(n)
		var sortedAr = nums.sorted(by: >)

		// Space Complexity O(1)
		var window = 0

		// Space Complexity O(n)
		var answer: [Int] = []

		// Time Complexity O(n)
		for num in sortedAr {

			// Time Complexity O(1)
			if window <= sum {
				window += num // Time Complexity O(1)
				sum -= num // Time Complexity O(1)
				answer.append(num) // Time Complexity O(1)
			} else {
				break
			}
		}

		return answer
	}
}

let solution = Solution()
print(solution.minSubsequence(nums1))
print(solution.minSubsequence(nums2))
