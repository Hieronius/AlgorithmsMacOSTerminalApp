//
//  3079. Find the Sum of Encrypted Integers.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 19.03.2025.
//

import Foundation

// MARK: 3079. Find the Sum of Encrypted Integers

class Solution {

	// MARK: Time Complexity
	// MARK: Space Complexity

	func sumOfEncryptedInt(_ nums: [Int]) -> Int {

		var counter = 0 // Space Complexity O(1)

		// Time Complexity O(n) or O(nums.length)
		for num in nums {

			counter += encrypt(num)
		}

		return counter
	}

	// MARK: Time Complexity O(n) or O(1) due to Swift Int limited Nature
	// MARK: Space Complexity O(n) or O(1) due to Swift Int limited Nature

	func encrypt(_ num: Int) -> Int {

		var temp = num // Space Complexity O(1)
		var digits: [Int] = [] // Space Complexity O(n) or O(1) due to Swift nature
		var result = 0 // Space Complexity O(1)

		// Time Complexity O(n) or O(1) due to Swift nature
		while temp != 0 {

			let digit = temp % 10 // Time O(1) | Space Complexity O(1)
			digits.append(digit) // Time O(1)
			temp /= 10 // Time O(1)
		}

		// Time O(n) or O(1) due to Swift nature | Space O(1)
		guard let maxDigit = digits.max() else { return -1 }

		var index = 0 // Space O(1)
		var multiplier = 1 // Space O(1)

		// Time O(n) or O(1) due to Swift nature
		while index < digits.count {
			result += (maxDigit * multiplier) // Time O(1)
			index += 1 // Time O(1)
			multiplier *= 10 // Time O(1)
		}
		return result
	}
}
