//
//  1742. Maximum Number of Balls in a Box.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 19.03.2025.
//

import Foundation

// MARK: 1742. Maximum Number of Balls in a Box

let lowLimit1 = 1
let highLimit1 = 10

let lowLimit2 = 5
let highLimit2 = 15

let lowLimit3 = 19
let highLimit3 = 28

class Solution {

	// MARK: Time Complexity O(highLimit - lowLimit + 1) * log10(highLimit))
	// MARK: Space Complexity O(n)

	func countBalls(_ lowLimit: Int, _ highLimit: Int) -> Int {

		// Time Complexity O(highLimit - lowLimit + 1) | Space O(highLimit - lowLimit + 1)
		let bolls = Array(stride(from: lowLimit, through: highLimit, by: 1))

		// Space O(n) where n - possible amount of boxes
		var hashTable: [Int: Int] = [:]

		// Time Complexity O(highLimit - lowLimit + 1)
		for item in bolls {

			// Time Complexity O(n) * O(log n) + O(1) + O(1) + O(n) due to limited size of number in Swift
			// Space Complexity O(1)
			let box = Array(String(item)).map {String($0)}.map {Int($0)!}.reduce(0, +)

			// Time Complexity O(1)
			hashTable[box, default: 0] += 1
		}

		// Time Complexity O(n)
		return hashTable.values.max()!
	}
}

let solution = Solution()
print(solution.countBalls(lowLimit1, highLimit1))
print(solution.countBalls(lowLimit2, highLimit2))
print(solution.countBalls(lowLimit3, highLimit3))
