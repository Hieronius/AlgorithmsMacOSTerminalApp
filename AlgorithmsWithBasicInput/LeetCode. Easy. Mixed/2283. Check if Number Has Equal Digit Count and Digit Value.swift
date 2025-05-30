//
//  2283. Check if Number Has Equal Digit Count and Digit Value.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 01.04.2025.
//

import Foundation

// MARK: 2283. Check if Number Has Equal Digit Count and Digit Value

let num1 = "1210"
let num2 = "030"

class Solution {

	// MARK: Time Complexity O(n) * O(n) = O(n^2)
	// MARK: Space Complexity O(n)

	func digitCount(_ num: String) -> Bool {

		// Time Complexity O(n) * O(1) * O(1)
		let temp = num.map { Int(String($0))! }

		// Time Complexity O(n)
		for index in 0..<num.count {

			// Space Complexity O(1)
			var counter = 0

			// Time Complexity O(n)
			for value in temp {

				// Time Complexity O(1)
				if value == index {
					// Time Complexity O(1)
					counter += 1
				}
			}
			// Time Complexity O(1)
			if temp[index] != counter {
				return false
			}
		}

		return true
	}
}

let solution = Solution()
print(solution.digitCount(num1))
print(solution.digitCount(num2))
