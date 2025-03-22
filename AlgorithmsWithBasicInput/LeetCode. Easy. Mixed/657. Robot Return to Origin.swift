//
//  657. Robot Return to Origin.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 18.03.2025.
//

import Foundation

// MARK: 657. Robot Return to Origin

class Solution {

	// MARK: Time Complexity O(n) * O(1) + O(1) == O(n)
	// MARK: Space Complexity O(1)
	// moves.length = n

	func judgeCircle(_ moves: String) -> Bool {

		var start = (0, 0) // Space Complexity O(1)

		// Time Complexity O(n)
		for char in moves {

			switch char {

			case "D":
				start.1 -= 1 // Time Complexity O(1)
			case "R":
				start.0 += 1 // Time Complexity O(1)
			case "L":
				start.0 -= 1 // Time Complexity O(1)
			case "U":
				start.1 += 1 // Time Complexity O(1)
			default:
				break
			}
		}

		return start == (0, 0) // Time Complexity O(1)
	}
}
