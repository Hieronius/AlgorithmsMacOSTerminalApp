//
//  2578. Split With Minimum Sum.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 03.04.2025.
//

import Foundation

// MARK: 2578. Split With Minimum Sum

var num1 = 4325
let num2 = 687

class Solution {

	// MARK: Time Complexity O(1)
	// MARK: Space Complexity O(1)

	func splitNum(_ num: Int) -> Int {

		var temp = num // Space Complexity O(1)
		var answer: [Int] = [] // Space Complexity O(10^9) or O(1) due to limited nature of number

		// Time Complexity O(10^9) or O(1) due to limited nature of number
		while temp > 0 {

			let first = temp % 10 // Time Complexity O(1)
			temp /= 10 // Time Complexity O(1)
			answer.append(first) // Time Complexity O(1)
		}

		// Time Complexity in Theory O(n log n) but in our case O(1) due to limited digits inside the number
		let sortedAr = answer.sorted()

		var first = "" // Space Complexity O(1)
		var second = "" // Space Complexity O(1)

		// Time Complexity in Theory O(n) and O(1) in practice
		for (index, num) in sortedAr.enumerated() {

			if index % 2 == 0 { // Time Complexity O(1)
				first += String(num) // Time Complexity O(1)
			} else {
				second += String(num) // Time Complexity O(1)
			}
		}

		// Time Complexity O(1) + O(1)
		return Int(first)! + Int(second)!
	}
}

let solution = Solution()
print(solution.splitNum(num1))
