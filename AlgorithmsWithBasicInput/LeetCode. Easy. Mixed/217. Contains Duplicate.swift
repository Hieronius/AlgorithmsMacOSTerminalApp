//
//  217. Contains Duplicate.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 26.04.2025.
//

import Foundation

// MARK: 217. Contains Duplicate

class Solution {

	// MARK: Time Complexity O(n)
	// MARK: Space Complexity O(n)

	func containsDuplicate(_ nums: [Int]) -> Bool {

		var hashTable: [Int: Int] = [:]

		for num in nums {
			hashTable[num, default: 0] += 1
			if hashTable[num]! > 1 {
				return true
			}
		}

		return false
	}
}
