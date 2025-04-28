//
//  1295. Find Numbers with Even Number of Digits.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 06.03.2025.
//

import Foundation

// 1295. Find Numbers with Even Number of Digits

//let nums1 = [12,345,2,6,7896]
//let nums2 = [555,901,482,1771]

class Solution {

	// MARK: Time Complexity O(n) * O(1) due to small range of possible Int number = O(n) overall
	// MARK: Space Complexity O(1)

	func findNumbers(_ nums: [Int]) -> Int {

		var counter = 0 // Space Complexity O(1)

		for num in nums { // Time Complexity O(n)

			if String(num).count % 2 == 0 {
				// Time Complexity O(d) for String(num) where d is amount of digits
				// Time Complexity O(d) for string.count again due to constant d amount of digits
				counter += 1 // Time Complexity O(1)
			}
		}
		return counter
	}
}

//let solution = Solution()
//print(solution.findNumbers(nums1))
//print(solution.findNumbers(nums2))
