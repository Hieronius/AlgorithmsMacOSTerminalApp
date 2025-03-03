//
//  3340. Check Balanced String.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 27.02.2025.
//

import Foundation

//let num1 = "1234"
//let num2 = "24123"

class Solution {

	// MARK: Time complexity is O(1)
	// MARK: Space complexity is O(1)

	func isBalanced(_ num: String) -> Bool {

		var evenSum = 0
		var oddSum = 0

		// Time is O(1-100) due to constraints so it's gives us O(1)
		for (index, char) in num.enumerated() {

			// Time is O(1) for each element
			guard let digit = Int(String(char)) else { return false }

			if index % 2 == 0 {
				evenSum += digit
			} else {
				oddSum += digit
			}
		}
		return evenSum == oddSum
	}
}

//let solution = Solution()
//print(solution.isBalanced(num1))
//print(solution.isBalanced(num2))
