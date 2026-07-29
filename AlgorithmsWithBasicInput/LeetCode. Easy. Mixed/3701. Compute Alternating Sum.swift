//
//  3701. Compute Alternating Sum.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 25.07.2026.
//

import Foundation

// MARK: 3701. Compute Alternating Sum

// MARK: CODE HERE

class Solution {
	func alternatingSum(_ nums: [Int]) -> Int {
		var result = 0

		for index in nums.indices {

			if index % 2 == 0 {
				result += nums[index]
			} else {
				result -= nums[index]
			}
		}
		return result
	}
}
