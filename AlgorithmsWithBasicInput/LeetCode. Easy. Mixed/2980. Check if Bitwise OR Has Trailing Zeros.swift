//
//  2980. Check if Bitwise OR Has Trailing Zeros.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 15.04.2025.
//

import Foundation

// MARK: 2980. Check if Bitwise OR Has Trailing Zeros

let nums1 = [1,2,3,4,5]
let nums2 = [6,5,5]

class Solution {

	// MARK: Time Complexity O(nums.count * nums.count) or O(n^2)
	// MARK: Space Complexity O(1)

	func hasTrailingZeros(_ nums: [Int]) -> Bool {

		guard nums.count > 2 else {
			return (nums[0] | nums[1]) & 1 != 1
		}

		for current in 0..<nums.count-1 {

			for next in current+1..<nums.count {
				print((nums[current] | nums[next]) & 1 != 1)
				if (nums[current] | nums[next]) & 1 != 1 { return true }
			}
		}
		return false
	}
}

let solution = Solution()
print(solution.hasTrailingZeros(nums2))
