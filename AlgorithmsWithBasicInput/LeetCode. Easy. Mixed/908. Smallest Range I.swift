//
//  908. Smallest Range I.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 04.04.2025.
//

import Foundation

// MARK: 908. Smallest Range I

let nums = [1,3,6]
let k = 3

class Solution {

	// MARK: Time Complexity O(n) + O(n) + O(1)
	// MARK: Space Complexity O(1)

	func smallestRangeI(_ nums: [Int], _ k: Int) -> Int {

		// Time Complexity O(n) | Space O(1)
		let max = nums.max()!

		// Time Complexity O(n) | Space O(1)
		let min = nums.min()!

		// Time Complexity O(1) | Space O(1)
		let score = (max - k) - (min + k)

		// Time Complexity O(1)
		return score > 0 ? score : 0
	}
}

let solution = Solution()
print(solution.smallestRangeI(nums, 3))
