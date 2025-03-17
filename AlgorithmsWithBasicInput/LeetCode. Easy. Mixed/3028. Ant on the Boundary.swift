//
//  3028. Ant on the Boundary.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 16.03.2025.
//

import Foundation

// MARK: 3028. Ant on the Boundary

class Solution {

	// MARK: Time Complexity O(n) * O(1) = O(n)
	// MARK: Space Complexity O(1)

	func returnToBoundaryCount(_ nums: [Int]) -> Int {

		// nums.count = n elements

		var line = 0 // Space Complexity O(1)
		var counter = 0 // Space Complexity O(1)

		// Time Complexity O(n)
		for num in nums {

			line += num // Time Complexity O(1)

			if line == 0 {
				counter += 1 // Time Complexity O(1)
			}
		}

		return counter
	}
}
