//
//  1025. Divisor Game.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 12.04.2025.
//

import Foundation

// MARK: 1025. Divisor Game

let n1 = 2
let n2 = 3
let n3 = 6
let n4 = 4

class Solution {

	// MARK: Time Complexity O(n)
	// MARK: Space Complexity O(1)

	func divisorGame(_ n: Int) -> Bool {

		guard n > 1 else { return false }

		var temp = n
		var counter = 0

		while temp > 1 {
			counter += 1
			temp -= 1
		}

		return counter % 2 != 0
	}
}

let solution = Solution()
//print(solution.divisorGame(n1))
//print(solution.divisorGame(n2))
//print(solution.divisorGame(n3))
print(solution.divisorGame(n4))
