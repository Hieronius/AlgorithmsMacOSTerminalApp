//
//  3005. Count Elements With Maximum Frequency.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 04.03.2025.
//

import Foundation

// MARK: 3005. Count Elements With Maximum Frequency

//let nums1 = [1,2,2,3,1,4]
//let nums2 = [1,2,3,4,5]

class Solution {

	// MARK: Time Complexity O(n) + O(1) = O(n)
	// MARK: Space Complexity O(1) + O(n) = O(n)

	func maxFrequencyElements(_ nums: [Int]) -> Int {

		guard !nums.isEmpty else { return 0 }

		var hashTable: [Int: Int] = [:] // Space Complexity up to O(n)
		var total = 0 // Space Complexity O(1)

		for num in nums { // Time Complexity O(n)
			hashTable[num, default: 0] += 1 // Time Complexity O(1)
		}

		let maxFrequency = hashTable.values.max() ?? 0 // Time Complexity O(n)

		for value in hashTable.values { // Time Complexity O(n)
			if value == maxFrequency {
				total += value // Time Complexity O(1)
			}
		}
		return total
	}
}

//let solution = Solution()
//print(solution.maxFrequencyElements(nums1))
//print(solution.maxFrequencyElements(nums2))
