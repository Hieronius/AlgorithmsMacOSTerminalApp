//
//  338. Counting Bits.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 27.03.2025.
//

import Foundation

// MARK: 338. Counting Bits

class Solution {

	// MARK: Time Complexity
	// MARK: Space Complexity

	func countBits(_ n: Int) -> [Int] {

		var answer: [Int] = [] // Space Complexity O(n)

		// Time Complexity O(n)
		for index in 0...n {

			// Time Complexity O(1) | Space O(1)
			let setBits = getSetBits(index)

			// Time Complexity O(1)
			answer.append(setBits)
		}
		return answer
	}

	// Time Complexity O(1)
	// Space Complexity O(1)
	func getSetBits(_ num: Int) -> Int {

		var counter = 0 // Space Complexity O(1)
		var temp = num // Space Complexity O(1)

		// Time Complexity O(1) due to maximum of 32 bit's number
		while temp != 0 {

			// Time Complexity O(1)
			temp &= temp - 1
			// Time Complexity O(1)
			counter += 1
		}

		return counter
	}
}
