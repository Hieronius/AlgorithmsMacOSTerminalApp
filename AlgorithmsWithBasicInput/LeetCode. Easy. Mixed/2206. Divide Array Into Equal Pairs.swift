//
//  2206. Divide Array Into Equal Pairs.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 28.03.2025.
//

import Foundation

// MARK: 2206. Divide Array Into Equal Pairs

let nums = [1,2,5,6]

class Solution {

	// MARK: Time Complexity O(1) + O(n) + O(n) = O(n)
	// MARK: Space Complexity O(n) + O(1) = O(n)

	func divideArray(_ nums: [Int]) -> Bool {

		// Time Complexity O(1)
		guard nums.count % 2 == 0 else { return false }

		// Time Complexity O(n) | Space O(n)
		let hashTable = nums.reduce(into: [Int: Int]()) { result, next in
			result[next, default: 0] += 1
		}

		// Time Complexity O(n) + O(1) = O(n) | Space O(1)
		let result = (hashTable.values.filter { $0 % 2 != 0 }).count

		// Time Complexity O(1)
		return result == 0
	}
}
