//
//  2363. Merge Similar Items.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 16.03.2025.
//

import Foundation

// MARK: 2363. Merge Similar Items

class Solution {

	// MARK: Time Complexity O(n + m) * O(1) + O(n) * O(1) + O(n log n) = O(n log n)
	// MARK: Space Complexity O(n) + O(n) + O(1) = O(n)

	// all possible elements = n
	// items1.count = l
	// items2.count = r
	// items1[0].count == items2[0].count == k

	func mergeSimilarItems(_ items1: [[Int]], _ items2: [[Int]]) -> [[Int]] {

		// Space Complexity O(n) because k == 2 in constant
		var answer: [[Int]] = []

		// Space Complexity O(n)
		var hashTable: [Int: Int] = [:]

		// Time Complexity O(n + m)
		for item in (items1 + items2) {

			let value = item[0] // Space Complexity O(1)
			let weight = item[1] // Space Complexity O(1)

			// Time Complexity O(1)
			hashTable[value, default: 0] += weight

		}

		// Time Complexity O(n)
		for (key, value) in hashTable {

			// Time Complexity O(1)
			answer.append([key, value])
		}

		// Time Complexity O(n log n)
		answer.sort { $0[0] < $1[0] }

		return answer
	}
}
