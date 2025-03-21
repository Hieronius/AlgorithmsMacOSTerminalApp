//
//  2928. Distribute Candies Among Children I.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 15.03.2025.
//

import Foundation

// MARK: 2928. Distribute Candies Among Children I

let n1 = 5
let limit1 = 2

let n2 = 3
let limit2 = 3

class Solution {

	// MARK: Time Complexity O(n) * O(n) * O(n) * O(1) = O(n^3)
	// MARK: Space Complexity O(1)

	func distributeCandies(_ n: Int, _ limit: Int) -> Int {

		var counter = 0 // Space Complexity O(1)

		for first in 0...limit { // Time Complexity O(n)

			for second in 0...limit { // Time Complexity O(n)

				for third in 0...limit { // Time Complexity O(n)

					if (first + second + third) == n {
						counter += 1 // Time Complexity O(1)
					}
				}

			}
		}
		return counter
	}
}

let solution = Solution()
print(solution.distributeCandies(n1, limit1))
print(solution.distributeCandies(n2, limit2))
