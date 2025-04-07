//
//  2859. Sum of Values at Indices With K Set Bits.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 27.03.2025.
//

import Foundation

// MARK: 2859. Sum of Values at Indices With K Set Bits

let nums1 = [5,10,1,5,2]
let k1 = 1

let nums2 = [4,3,2,1]
let k2 = 2

class Solution {

	// MARK: Time Complexity O(n) * O(1) = O(n)
	// MARK: Space Complexity O(1) * O(1) = O(1)
	// nums.count = n

	func sumIndicesWithKSetBits(_ nums: [Int], _ k: Int) -> Int {

		var result = 0 // Space Complexity O(1)

		// Time Complexity O(n)
		for (index, value) in nums.enumerated() {

			// Time O(1) | Space O(1)
			if isValidIndex(index, k) {
				result += value // // Time Complexity O(n)
			}
		}

		return result
	}

	// Time Complexity O(1)
	// Space Complexity O(1)
	func isValidIndex(_ index: Int, _ k: Int) -> Bool {

		var temp = index // Space Complexity O(1)
		var counter = 0 // Space Complexity O(1)

		// Time Complexity is O(1) due to limited bounds of the number
		while temp != 0 {
			counter += temp & 1 // Time Complexity O(1)
			temp >>= 1 // Time Complexity O(1)
		}

		return counter == k // Time Complexity O(1)
	}
}

let solution = Solution()
print(solution.sumIndicesWithKSetBits(nums1, k1))
print(solution.sumIndicesWithKSetBits(nums2, k2))
