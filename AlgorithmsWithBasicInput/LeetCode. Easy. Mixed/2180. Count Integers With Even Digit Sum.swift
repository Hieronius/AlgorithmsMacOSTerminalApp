//
//  2180. Count Integers With Even Digit Sum.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 20.04.2025.
//

import Foundation

// MARK: 2180. Count Integers With Even Digit Sum

let num1 = 4
let num2 = 30

class Solution {

	// MARK: Time Complexity O(n)
	// MARK: Space Complexity O(1)

	func countEven(_ num: Int) -> Int {

		var counter = 0

		for n in 1...num {
			if getDigitsSum(n) % 2 == 0 { counter += 1}
		}

		return counter
	}

	func getDigitsSum(_ num: Int) -> Int {

		// 11
		var temp = num
		var digits: [Int] = []

		while temp > 0 {
			let digit = temp % 10
			digits.append(digit)
			temp /= 10
		}

		return digits.reduce(0, +)
	}
}

let solution = Solution()
print(solution.countEven(num1))
