//
//  1331. Rank Transform of an Array.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 07.04.2025.
//

import Foundation

// MARK: 1331. Rank Transform of an Array

class Solution {

	// MARK: Time Complexity O(n log n)
	// MARK: Space Complexity O(n)

	func arrayRankTransform(_ arr: [Int]) -> [Int] {

		// Space O(Set(arr).count) | Time O (Set(arr).count * log Set(arr).count)
		let sortedAr = Array(Set(arr)).sorted()

		// Space O(Set(arr).count)
		var answer: [Int] = []

		// Space O(Set(arr).count)
		var hashTable: [Int: Int] = [:]

		// Time O (Set(arr).count
		for (index, value) in sortedAr.enumerated() {
			// Time O(1)
			hashTable[value] = index
		}

		// Time O (arr.count)
		for num in arr {

			// Time O(1)
			let rank = hashTable[num]! + 1
			// Time O(1)
			answer.append(rank)
		}

		return answer
	}
}
