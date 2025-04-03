//
//  461. Hamming Distance.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 18.03.2025.
//

import Foundation

// MARK: 461. Hamming Distance

let x1 = 1
let y1 = 4

class Solution {

	// MARK: Time Complexity O(1) + O(log n) * O(1) = O(log n)
	// MARK: Space Complexity O(1) + O(1) = O(1)

	func hammingDistance(_ x: Int, _ y: Int) -> Int {

		// Time O(1) and Space O(1)
		let accumulator = x^y
		var counter = 0 // Space O(1)

		// Time Complexity O(log n)
		for char in String(accumulator, radix:2) {
			if char == "1" {
				counter += 1 // Time O(1)
			}
		}
		return counter
	}
}

let solution = Solution()
print(solution.hammingDistance(x1, y1))
