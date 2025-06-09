//
//  2389. Longest Subsequence With Limited Sum.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 30.03.2025.
//

import Foundation

// MARK: 2389. Longest Subsequence With Limited Sum

let nums = [4,5,2,1] // [2, 3, 4]
let queries = [3,10,21]

class Solution {

	// MARK: Time Complexity O(n log n) + O(n * m) = O(n * m)
	// MARK: Space Complexity O(n + m)

	func answerQueries(_ nums: [Int], _ queries: [Int]) -> [Int] {

		// Time Complexity O(n log n) | Space O(n)
		let sortedAr = nums.sorted()
		var sum = 0 // Space O(1)
		var length = 0 // Space O(1)
		var answer: [Int] = [] // Space O(m)
		var index = 0 // Space O(1)

		// Time Complexity O(m)
		for target in queries {

			// Time Complexity O(n)
			while target > sum && index < nums.count {
				sum += sortedAr[index] // Time Complexity O(1)
				index += 1 // Time Complexity O(1)
				length += 1 // Time Complexity O(1)

			}

			// Time Complexity O(1)
			if sum > target {
				answer.append(length-1)
			} else {
				answer.append(length)
			}
			// Time Complexity
			sum = 0
			index = 0
			length = 0
		}

		return answer
	}
}
let solution = Solution()
print(solution.answerQueries(nums, queries))
