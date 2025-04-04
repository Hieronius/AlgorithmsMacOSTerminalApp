//
//  1342. Number of Steps to Reduce a Number to Zero.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 27.03.2025.
//

import Foundation

// MARK: 1342. Number of Steps to Reduce a Number to Zero

class Solution {

	// MARK: Time Complexity
	// MARK: Space Complexity

	func numberOfSteps(_ num: Int) -> Int {

		var temp = num // Space Complexity O(1)
		var counter = 0 // Space Complexity O(1)

		// Time Complexity O(1) due to limited bounds of the number (32 bits)
		while temp != 0 {

			// Time Complexity O(1)
			if temp & 1 == 0 {

				// Time Complexity O(1)
				temp >>= 1

			} else {
				// Time Complexity O(1)
				temp &= temp - 1
			}
			// Time Complexity O(1)
			counter += 1
		}
		return counter
	}
}
