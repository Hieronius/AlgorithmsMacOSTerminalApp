//
//  961. N-Repeated Element in Size 2N Array.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 09.03.2025.
//

import Foundation

// MARK: 961. N-Repeated Element in Size 2N Array

//let nums1 = [1,2,3,3]
//let nums2 = [2,1,2,5,3,2]
//let nums3 = [5,1,5,2,5,3,5,4]

class Solution {

	// MARK: Time Complexity O(n) + O(n) + O(1) = O(n)
	// MARK: Space Complexity O(n)

	func repeatedNTimes(_ nums: [Int]) -> Int {

		let n = nums.count / 2 // Time Complexity O(1)
		var hashTable: [Int: Int] = [:] // Space Complexity O(n)

		// Time Complexity O(n)
		for num in nums {
			hashTable[num, default: 0] += 1 // Time Complexity O(1)
		}

		// Time Complexity O(n)
		for (key, value) in hashTable {
			if value == n {
				return key
			}
		}
		return 0
	}
}

//let solution = Solution()
//print(solution.repeatedNTimes(nums1))
//print(solution.repeatedNTimes(nums2))
//print(solution.repeatedNTimes(nums3))
