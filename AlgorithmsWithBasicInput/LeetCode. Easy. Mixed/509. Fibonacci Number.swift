//
//  509. Fibonacci Number.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 29.03.2025.
//

import Foundation

// MARK: 509. Fibonacci Number

let num2 = 2
let num3 = 3

class Solution {

	// MARK: Time Complexity O(1) + O(n) * O(1) = O(n)
	// MARK: Space Complexity O(n) + O(1) = O(n)

	func fib(_ n: Int) -> Int {

		// Time Complexity O(1)
		guard n > 0 else { return 0 }

		// Time Complexity O(1)
		guard n > 1 else { return 1 }

		// Space Complexity O(n)
		var fibAr: [Int] = [0, 1]

		// Space Complexity O(1)
		var index = 0

		// Time Complexity O(n)
		while index < n - 1 {

			// Time Complexity O(1) | Space O(1)
			let newNum = fibAr[index] + fibAr[index + 1]

			// Time Complexity O(1)
			fibAr.append(newNum)

			// Time Complexity O(1)
			index += 1
		}

		// Time Complexity O(1)
		return fibAr.last!
	}
}

let solution = Solution()
print(solution.fib(num2))
print(solution.fib(num3))
