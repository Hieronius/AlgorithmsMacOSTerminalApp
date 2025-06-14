//
//  258. Add Digits.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 26.04.2025.
//

import Foundation

// MARK: 258. Add Digits

let num = 38

class Solution {

	// MARK: Time Complexity O(log n)
	// MARK: Space Complexity O(1)

	func addDigits(_ num: Int) -> Int {

		var temp = num
		var digits: [Int] = []

		var answer = Int.max

		while answer > 9 {
			while temp > 0 {
				let digit = temp % 10
				temp /= 10
				digits.append(digit)
			}
			temp = digits.reduce(0, +)
			answer = min(answer, temp)
			digits = []
		}
		return answer
	}
}

let solution = Solution()
print(solution.addDigits(num))
