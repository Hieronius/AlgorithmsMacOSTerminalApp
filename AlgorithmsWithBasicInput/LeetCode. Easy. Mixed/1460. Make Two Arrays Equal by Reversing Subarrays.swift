//
//  1460. Make Two Arrays Equal by Reversing Subarrays.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 18.03.2025.
//

import Foundation

// MARK: 1460. Make Two Arrays Equal by Reversing Subarrays

class Solution {

	// MARK: Time Complexity O(n + m) + O(n + m) + O(n + m)
	// MARK: Space Complexity O(m) + O(n) = O(m + n)
	// target.length = m
	// arr.length = n
	// m == n

	func canBeEqual(_ target: [Int], _ arr: [Int]) -> Bool {

		// Time O(m) / Space O(m)
		let hashTable1 = target.reduce(into: [Int: Int]()) { result, next in
			result[next, default: 0] += 1
		}
		// Time O(n) / Space O(n)
		let hashTable2 = arr.reduce(into: [Int: Int]()) { result, next in
			result[next, default: 0] += 1
		}

		// Time O(n)
		return hashTable1 == hashTable2
	}
}
