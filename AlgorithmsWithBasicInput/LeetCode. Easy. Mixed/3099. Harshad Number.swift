//
//  3099. Harshad Number.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 21.02.2025.
//

import Foundation

// MARK: Speed Complexity O(1), Memory Complexity O(1)

class Solution {

	func sumOfTheDigitsOfHarshadNumber(_ x: Int) -> Int {

		guard x > 0 else { return -1 }
		guard x < 101 else { return -1 }
		guard x != 100 else { return 1 }
		guard x > 9 else { return x }

		var nums: [Int] = []

		for char in String(x) {
			guard let num = Int(String(char)) else { return -1 }
			nums.append(num)
		}

		let sum = nums[0] + nums[1]

		if x % sum == 0 {
			return sum
		} else {
			return -1
		}
	}
}
