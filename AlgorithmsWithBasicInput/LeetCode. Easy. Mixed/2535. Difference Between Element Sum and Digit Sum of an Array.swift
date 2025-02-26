//
//  2535. Difference Between Element Sum and Digit Sum of an Array.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 24.02.2025.
//

import Foundation

class Solution {

	// MARK: Total Speed Complexity is O(n) due to small data set constraints
	// MARK: Total Memory Complexity is O(n) due to two new arrays memory allocation

	func differenceOfSum(_ nums: [Int]) -> Int {

		let elementsSum = nums.reduce(0, +) // Speed O(n), Memory O(n)
		let stringNums = nums.map { String($0) } // Speed O(n), Memory O(n)
		var digitsSum = 0

		// Speed O(n)
		for num in stringNums {

			// Speed O(1) due to constraints of 0 <= num <= 2000
			for char in num {

				guard let digit = Int(String(char)) else { return -1 }
				digitsSum += digit
			}
		}
		// Speed O(1)
		return abs(elementsSum - digitsSum)
	}
}
