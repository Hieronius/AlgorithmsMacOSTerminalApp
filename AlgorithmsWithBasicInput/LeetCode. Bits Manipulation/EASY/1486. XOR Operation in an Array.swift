//
//  1486. XOR Operation in an Array.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 27.03.2025.
//

import Foundation

// MARK: 1486. XOR Operation in an Array

let n1 = 5
let start1 = 0

let n2 = 4
let start2 = 3

class Solution {

	// MARK: Time Complexity O(n) * O(1) = O(n)
	// MARK: Space Complexity O(n)

	func xorOperation(_ n: Int, _ start: Int) -> Int {

		var array = [start] // Space Complexity O(n)

		// Time Complexity O(n)
		for index in 1..<n {

			// Time Complexity O(1) | Space O(1)
			let num = start + 2 * index

			// Time Complexity O(1)
			array.append(num)
		}

		// Time Complexity O(n)
		return array.reduce(0, ^)
	}
}

let solution = Solution()
print(solution.xorOperation(n1, start1))
print(solution.xorOperation(n2, start2))
