//
//  3270. Find the Key of the Numbers.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 09.03.2025.
//

import Foundation

// MARK: 3270. Find the Key of the Numbers

//let num1 = 1, num2 = 10, num3 = 1000
//let num4 = 987, num5 = 879, num6 = 798
//let num7 = 1, num8 = 2, num9 = 3

class Solution {

	// MARK: Time Complexity O(1)
	// MARK: Space Complexity O(1)

	func generateKey(_ num1: Int, _ num2: Int, _ num3: Int) -> Int {

		// Time Complexity O(1), Space Complexity O(1)
		var stringNum1 = String(num1)

		// Time Complexity O(1), Space Complexity O(1)
		var stringNum2 = String(num2)

		// Time Complexity O(1), Space Complexity O(1)
		var stringNum3 = String(num3)

		var answer = "" // Space Complexity O(1)

		// Time Complexity O(1)
		while stringNum1.count < 4 {
			stringNum1 = "0" + stringNum1 // Time Complexity O(1)
		}

		// Time Complexity O(1)
		while stringNum2.count < 4 {
			stringNum2 = "0" + stringNum2 // Time Complexity O(1)
		}

		// Time Complexity O(1)
		while stringNum3.count < 4 {
			stringNum3 = "0" + stringNum3 // Time Complexity O(1)
		}

		// Time Complexity O(1), Space Complexity O(1)
		let stringNum1Ar = Array(stringNum1)

		// Time Complexity O(1), Space Complexity O(1)
		let stringNum2Ar = Array(stringNum2)

		// Time Complexity O(1), Space Complexity O(1)
		let stringNum3Ar = Array(stringNum3)

		var currentIndex = 0 // Space Complexity O(1)

		// Time Complexity O(1)
		while currentIndex < 4 {
			// Time Complexity O(1)
			answer.append(min(stringNum1Ar[currentIndex],
							  stringNum2Ar[currentIndex],
							  stringNum3Ar[currentIndex]))
			currentIndex += 1 // // Time Complexity O(1)
		}
		return Int(answer) ?? 0 // // Time Complexity O(1)
	}
}

//let solution = Solution()
//print(solution.generateKey(num1, num2, num3))
//print(solution.generateKey(num4, num5, num6))
//print(solution.generateKey(num7, num8, num9))
