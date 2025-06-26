//
//  2917. Find the K-or of an Array.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 02.04.2025.
//

import Foundation

// MARK: 2917. Find the K-or of an Array

let nums1 = [7,12,9,8,9,15]
let k1 = 4

class Solution {

	// MARK: Time Complexity O(n) due to inner while loop
	// MARK: Space Complexity O(n)

	func findKOr(_ nums: [Int], _ k: Int) -> Int {

		var tempNums = nums // Space Complexity O(n)
		var answer = "" // Space Complexity O(1-32) so O(1) as simplified

		// Time Complexity O(1)
		for _ in 0..<32 {

			var counter = 0 // Space Complexity O(1)
			var index = 0 // Space Complexity O(1)

			// Time Complexity O(n)
			while index < tempNums.count {

				// Time Complexity O(1)
				counter += tempNums[index] & 1
				// Time Complexity O(1)
				tempNums[index] >>= 1
				// Time Complexity O(1)
				index += 1
			}

			// Time Complexity O(1)
			if counter >= k {
				answer.append("1") // Time Complexity O(1)
			} else {
				answer.append("0") // Time Complexity O(1)
			}
			counter = 0 // Time Complexity O(1)
			index = 0 // Time Complexity O(1)
		}

		// Time Complexity O(1-32) so O(1)
		let reversedAnswer = String(answer.reversed())

		// Time Complexity O(1-32) or O(1)
		return Int(reversedAnswer, radix: 2)!
	}
}

let solution = Solution()
print(solution.findKOr(nums1, k1))
