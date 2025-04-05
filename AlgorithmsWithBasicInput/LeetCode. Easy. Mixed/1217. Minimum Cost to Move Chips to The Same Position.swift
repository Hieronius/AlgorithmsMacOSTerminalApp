//
//  1217. Minimum Cost to Move Chips to The Same Position.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 01.04.2025.
//

import Foundation

// MARK: 1217. Minimum Cost to Move Chips to The Same Position

let position = [1,2,3]
let position2 = [2,2,2,3,3]
let position3 = [1,1000000000]

class Solution {

	// MARK: Time Complexity O(n)
	// MARK: Space Complexity O(1)

	func minCostToMoveChips(_ position: [Int]) -> Int {

		var even = 0
		var odd = 0

		for num in position {
			if num % 2 == 0 {
				even += 1
			} else {
				odd += 1
			}
		}

		return min(even, odd)
	}
}
