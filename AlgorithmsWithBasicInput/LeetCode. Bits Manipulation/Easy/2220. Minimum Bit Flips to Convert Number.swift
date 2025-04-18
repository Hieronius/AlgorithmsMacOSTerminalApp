//
//  2220. Minimum Bit Flips to Convert Number.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 26.03.2025.
//

import Foundation

// MARK: 2220. Minimum Bit Flips to Convert Number

let start1 = 10 // 1010
let goal1 = 7 // 0111

let start2 = 3 // 011
let goal2 = 4 // 100

class Solution {

	// MARK: Time Complexity O(1)
	// MARK: Space Complexity O(1)

	func minBitFlips(_ start: Int, _ goal: Int) -> Int {

		var counter = 0 // Space Complexity O(1)
		var difference = start ^ goal // Time Complexity O(1) | Space O(1)

		// Time Complexity O(1) in Practice and O(max(goal, start) due to limited boundaries of existing number
		while difference != 0 {
			counter += difference & 1 // Time Complexity O(1)
			difference >>= 1 // Space Complexity O(1)
		}

		return counter
	}
}

let solution = Solution()
print(solution.minBitFlips(start1, goal1))
print(solution.minBitFlips(start2, goal2))
