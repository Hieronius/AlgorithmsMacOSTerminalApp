//
//  2341. Maximum Number of Pairs in Array.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 10.03.2025.
//

import Foundation

// MARK: 2341. Maximum Number of Pairs in Array

let nums1 = [1,3,2,1,3,2,2]
let nums2 = [1,1]
let nums3 = [0]

class Solution {

	// MARK: Time Complexity O(n) + O(n) = O(n)
	// MARK: Space Complexity O(1) + O(n) = O(n)

	func numberOfPairs(_ nums: [Int]) -> [Int] {

		var counter = 0 // Space Complexity O(1)
		var leftOvers = 0 // Space Complexity O(1)

		var hashTable: [Int: Int] = [:] // Space Complexity O(n)

		// Time Complexity O(n)
		for num in nums {

			// Multiply by Time Complexiy of O(1)
			hashTable[num, default: 0] += 1
		}

		// Time Complexity O(n)
		for value in hashTable.values {

			// Multiply by
			let pairs = value / 2 // Time Complexiy of O(1)
			counter += pairs // Time Complexiy of O(1)
			leftOvers += (value - (pairs * 2)) // Time Complexiy of O(1)
		}

		return [counter, leftOvers]
	}
}

let solution = Solution()
print(solution.numberOfPairs(nums1))
print(solution.numberOfPairs(nums2))
print(solution.numberOfPairs(nums3))
