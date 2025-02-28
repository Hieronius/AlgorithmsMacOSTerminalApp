//
//  2006. Count Number of Pairs With Absolute Difference K.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 27.02.2025.
//

import Foundation

//let nums1 = [1,2,2,1]
//let k1 = 1
//
//let nums2 = [1,3]
//let k2 = 3
//
//let nums3 = [3,2,1,5,4]
//let k3 = 2

class Solution {

	// MARK: Time Complexity = O(n^2) due to inner and outer while loop
	// MARK: Space Complexity = O(1) due to only extra memory allocation for a few variables

	func countKDifference(_ nums: [Int], _ k: Int) -> Int {

		guard !nums.isEmpty else { return 0 }

		var counter = 0
		var leftIndex = 0

		while leftIndex < nums.count {

			var rightIndex = nums.count - 1

			while leftIndex < rightIndex {

				if abs(nums[leftIndex] - nums[rightIndex]) == k {
					counter += 1
				}
				rightIndex -= 1
			}
			leftIndex += 1
		}
		return counter
	}
}

//let solution = Solution()
//print(solution.countKDifference(nums1, k1))
//print(solution.countKDifference(nums2, k2))
//print(solution.countKDifference(nums3, k3))
