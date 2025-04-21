//
//  2544. Alternating Digit Sum.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 20.04.2025.
//

import Foundation

// MARK: 2544. Alternating Digit Sum

let num = 10

class Solution {

	// MARK: Time Complexity Theoretically O(n) Practically O(1) due to limited digits
	// MARK: Space Complexity Theoretically O(n) Practically O(1) due to limited digits

	func alternateDigitSum(_ n: Int) -> Int {

		var temp = n
		var digits: [Int] = []
		var sum = 0

		while temp > 0 {
			let digit = temp % 10
			temp /= 10
			digits.append(digit)
		}

		let reversedDigits = Array(digits.reversed())

		for index in reversedDigits.indices {

			if index % 2 == 0 || index == 0 {
				sum += reversedDigits[index]
			} else {
				sum -= reversedDigits[index]
			}
		}

		return sum
	}
}

let solution = Solution()
print(solution.alternateDigitSum(num))
