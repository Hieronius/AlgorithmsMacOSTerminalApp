//
//  3019. Number of Changing Keys.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 02.03.2025.
//

import Foundation

// MARK: 3019. Number of Changing Keys

//let s1 = "aAbBcC"
//let s2 = "AaAaAaaA"

class Solution {

	// MARK: Time Complexity overall is O(n)
	// MARK: Time Complexity accordingly to problem constraints O(1-100)
	// MARK: Space Complexity is O(n)

	func countKeyChanges(_ s: String) -> Int {

		guard s.count > 1 else { return 0 }

		var counter = 0
		var index = 0
		let uppercasedString = Array(s.uppercased()) // Time Complexity of O(n), Space O(n)

		while index < s.count - 1 { // Time Complexity of O(n)

			if (uppercasedString[index] != uppercasedString[index+1]) {
				counter += 1
			}
			index += 1
		}
		return counter
	}
}

//let solution = Solution()
//print(solution.countKeyChanges(s1))
//print(solution.countKeyChanges(s2))
