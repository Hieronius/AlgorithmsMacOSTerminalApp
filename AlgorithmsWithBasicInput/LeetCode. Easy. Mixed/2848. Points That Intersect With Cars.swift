//
//  :: MARK- 2848. Points That Intersect With Cars.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 19.03.2025.
//

import Foundation

// MARK: 2848. Points That Intersect With Cars

class Solution {

	// MARK: Time Complexity O(n) * O(k) * O(1) + O(1) = O(n * k)
	// MARK: Space Complexity O(n)
	// nums.count = n
	// nums[0].count = 2
	// nums[i][1] - nums[i][0] = k

	func numberOfPoints(_ nums: [[Int]]) -> Int {

		var hashTable: [Int: Int] = [:] // Space Complexity O(n)

		// Time Complexity O(n)
		for spot in nums {

			// Time Complexity O(spot[1] - spot[0]) or O(k)
			for point in spot[0]...spot[1] {
				hashTable[point, default: 0] += 1 // // Time Complexity O(1)
			}
		}

		return hashTable.keys.count // Time Complexity O(1)
	}
}
