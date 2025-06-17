//
//  2670. Find the Distinct Difference Array.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 08.03.2025.
//

import Foundation

// MARK: 2670. Find the Distinct Difference Array

//let nums1 = [1,2,3,4,5]
//let nums2 = [3,2,3,4,2]

class Solution {

	// MARK: Time Complexity O(n) * O(n) = O(n^2)
	// MARK: Space Complexity O(1) + O(n) = O(n)

	func distinctDifferenceArray(_ nums: [Int]) -> [Int] {

		let size = nums.count // Space Complexity O(1)
		var i = 0 // Space Complexity O(1)
		var answer: [Int] = [] // Space Complexity O(n)

		while i < size { // Time Complexity O(n)

			let left = (Set(nums[0...i])).count // Time Complexity O(n) + O(n)
			let right = (Set(nums[i+1..<size])).count // Time Complexity O(n) + O(n)
			answer.append(left - right) // Time Complexity O(1)
			i += 1 // Time Complexity O(1)
		}

		return answer
	}
}

//let solution = Solution()
//print(solution.distinctDifferenceArray(nums1))
//print(solution.distinctDifferenceArray(nums2))
