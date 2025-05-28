//
//  2154. Keep Multiplying Found Values by Two.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 05.04.2025.
//

import Foundation

// MARK: 2154. Keep Multiplying Found Values by Two

let nums1 = [8,19,4,2,15,3]
let original = 2

class Solution {

	// MARK: Time Complexity O(n log n)
	// MARK: Space Complexity O(n)

	func findFinalValue(_ nums: [Int], _ original: Int) -> Int {

		// Space Complexity O(1)
		var newOriginal = original

		// Time Complexity O(n log n) | Space O(n)
		let temp = nums.sorted()

		// Time Complexity O(n)
		for num in temp {

			// Time Complexity O(1)
			if num == newOriginal {

				// Time Complexity O(1)
				newOriginal *= 2
			}
		}

		return newOriginal
	}
}

let solution = Solution()
print(solution.findFinalValue(nums1, original))
