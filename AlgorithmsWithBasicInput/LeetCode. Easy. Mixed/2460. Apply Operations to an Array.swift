//
//  2460. Apply Operations to an Array.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 13.03.2025.
//

import Foundation

// MARK: 2460. Apply Operations to an Array

let nums1 = [1,2,2,1,1,0]
let nums2 = [0,1]

class Solution {

	// MARK: Time Complexity O(n) * O(1) = O(n)
	// MARK: Space Complexity O(n) + O(1) = O(n)

	func applyOperations(_ nums: [Int]) -> [Int] {

		guard !nums.isEmpty else { return [] }
		guard nums.count > 1 else { return [] }

		var temp = nums // Space Complexity O(n)
		var index = 0 // Space Complexity O(1)

		// Time Complexity O(n)
		while index < temp.count - 1 {

			if temp[index] == temp[index + 1] {
				temp[index] *= 2 // Time Complexity O(1)
				temp[index + 1] = 0 // Time Complexity O(1)
			}
			index += 1 // Time Complexity O(1)
		}

		// Time Complexity O(n)
		let leftArray = temp.filter { $0 != 0 }

		// Time Complexity O(n)
		let rightArray = temp.filter { $0 == 0 }

		// Time Complexity O(n)
		return leftArray + rightArray
	}
}

//let solution = Solution()
//print(solution.applyOperations(nums1))
//print(solution.applyOperations(nums2))
