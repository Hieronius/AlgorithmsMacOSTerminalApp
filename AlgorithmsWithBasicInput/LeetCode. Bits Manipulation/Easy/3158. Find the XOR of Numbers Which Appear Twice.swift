//
//  3158. Find the XOR of Numbers Which Appear Twice.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 27.03.2025.
//

import Foundation

// MARK: 3158. Find the XOR of Numbers Which Appear Twice

let nums1 = [1,2,1,3]
let nums2 = [1,2,3]

class Solution {

	// MARK: Time Complexity O(n) * O(1) = O(n)
	// MARK: Space Complexity O(n) + O(1) = O(n)

	func duplicateNumbersXOR(_ nums: [Int]) -> Int {

		var hashTable: [Int: Int] = [:] // Space Complexity O(n)
		var accumulator = 0 // Space Complexity O(1)

		// Time Complexity O(n)
		for num in nums {

			// Time Complexity O(1)
			if hashTable[num] == nil {

				// Time Complexity O(1)
				hashTable[num] = 1
			} else {
				// Time Complexity O(1)
				accumulator ^= num
			}
		}

		return accumulator
	}
}

let solution = Solution()
print(solution.duplicateNumbersXOR(nums1))
print(solution.duplicateNumbersXOR(nums2))
