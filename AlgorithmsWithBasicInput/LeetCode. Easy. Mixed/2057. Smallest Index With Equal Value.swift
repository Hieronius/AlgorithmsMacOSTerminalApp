//
//  2057. Smallest Index With Equal Value.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 01.04.2025.
//

import Foundation

// MARK: 2057. Smallest Index With Equal Value

class Solution {

	// MARK: Time Complexity O(n)
	// MARK: Space Complexity O(1)

	func smallestEqual(_ nums: [Int]) -> Int {

		// Time Complexity O(n)
		for (index, value) in nums.enumerated() {

			// Time Complexity O(1)
			if index % 10 == value {
				return index
			}
		}
		return -1
	}
}
