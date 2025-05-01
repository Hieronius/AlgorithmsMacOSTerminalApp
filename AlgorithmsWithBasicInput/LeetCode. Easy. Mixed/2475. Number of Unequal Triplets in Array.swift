//
//  2475. Number of Unequal Triplets in Array.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 02.04.2025.
//

import Foundation

// MARK: 2475. Number of Unequal Triplets in Array

let nums1 = [4,4,2,4,3]

class Solution {

	// MARK: Time Complexity O(n^3)
	// MARK: Space Complexity O(1)

	func unequalTriplets(_ nums: [Int]) -> Int {

		var counter = 0 // Space Complexity O(1)

		// Time Complexity O(n)
		for firstIndex in 0..<nums.count {

			// Time Complexity O(n-1)
			for secondIndex in firstIndex+1..<nums.count {

				// Time Complexity O(n-2)
				for thirdIndex in secondIndex+1..<nums.count {

					let first = nums[firstIndex] // Space Complexity O(1)
					let second = nums[secondIndex] // Space Complexity O(1)
					let third = nums[thirdIndex] // Space Complexity O(1)

					// Time Complexity O(1)
					if isValidTriplet(first, second, third) {
						counter += 1 // Time Complexity O(1)
					}
				}
			}
		}

		return counter
	}

	// Time Complexity O(1)
	func isValidTriplet(_ first: Int, _ second: Int, _ third: Int) -> Bool {

		(first != second) &&
		(second != third) &&
		(first != third)
	}
}
