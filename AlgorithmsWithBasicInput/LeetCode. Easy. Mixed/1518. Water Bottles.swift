//
//  1518. Water Bottles.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 06.04.2025.
//

import Foundation

// MARK: 1518. Water Bottles

let numBottles = 15, numExchange = 4

class Solution {

	// MARK: Time Complexity O(log n)
	// MARK: Space Complexity O(1)

	func numWaterBottles(_ numBottles: Int, _ numExchange: Int) -> Int {

		// Space Complexity O(1)
		var max = numBottles

		// Space Complexity O(1)
		var fullBottles = numBottles

		// Time Complexity O(log n)
		while (fullBottles / numExchange) > 0 {

			// Time Complexity O(1)
			let bottlesToGet = fullBottles / numExchange

			// Time Complexity O(1)
			let emptyBottles = fullBottles % numExchange

			// Time Complexity O(1)
			max += bottlesToGet

			// Time Complexity O(1)
			fullBottles = bottlesToGet + emptyBottles
		}
		return max
	}
}

let solution = Solution()
print(solution.numWaterBottles(numBottles, numExchange))
