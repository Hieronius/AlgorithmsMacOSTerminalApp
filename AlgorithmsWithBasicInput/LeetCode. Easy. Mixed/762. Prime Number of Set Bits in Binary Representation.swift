//
//  762. Prime Number of Set Bits in Binary Representation.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 07.04.2025.
//

import Foundation

// MARK: 762. Prime Number of Set Bits in Binary Representation

let left1 = 6, right1 = 10
let left2 = 10, right2 = 15


class Solution {

	// MARK: Time Complexity O(right - left + 1)
	// MARK: Space Complexity O(1)

	func countPrimeSetBits(_ left: Int, _ right: Int) -> Int {

		var counter = 0 // Space Complexity O(1)

		// Time Complexity O(right-left + 1)
		for num in left...right {

			// Time O(1) | Space O(1)
			if isSetBitsPrimal(num) {
				// Time O(1)
				counter += 1
			}
		}
		return counter
	}

	// Time O(1)
	// Space O(1)
	func isSetBitsPrimal(_ num: Int) -> Bool {

		// Space Complexity O(1)
		let primes: Set<Int> = [2, 3, 5, 7, 11, 13, 17, 19]

		// Space Complexity O(1)
		var temp = num

		// Space Complexity O(1)
		var setBits = 0

		// Time Complexity O(20 - biggest possible numbers in bits)
		while temp != 0 {

			// Time Complexity O(1)
			if temp & 1 == 1 {

				// Time Complexity O(1)
				setBits += 1
			}
			// Time Complexity O(1)
			temp >>= 1
		}

		// Time Complexity O(1)
		return primes.contains(setBits)
	}
}

let solution = Solution()
print(solution.countPrimeSetBits(left1, right1))
print(solution.countPrimeSetBits(left2, right2))
//print(solution.isSetBitsPrimal(15))
