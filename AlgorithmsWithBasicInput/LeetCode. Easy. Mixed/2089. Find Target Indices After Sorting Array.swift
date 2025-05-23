//
//  2089. Find Target Indices After Sorting Array.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 09.03.2025.
//

import Foundation

// MARK: 2089. Find Target Indices After Sorting Array

class Solution {

	// MARK: Time Complexity O(n logN) + O(n) * O(1) = O(n logN)
	// MARK: Space Complexity O(n) + O(n) = O(n)

	func targetIndices(_ nums: [Int], _ target: Int) -> [Int] {

		// Time Complexity O(n log n), Space Complexity O(n)
		let temp = nums.sorted()

		// Space Complexity O(n)
		var answer: [Int] = []

		// Time complexity O(n)
		for (index, value) in temp.enumerated() {

			if value == target {
				answer.append(index) // Time Complexity O(1)
			}
		}
		return answer
	}
}
