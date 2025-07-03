//
//  387. First Unique Character in a String.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 27.04.2025.
//

import Foundation

// MARK: 387. First Unique Character in a String

let s = "leetcode"

class Solution {

	// MARK: Time Complexity O(n)
	// MARK: Space Complexity O(1) due to 26 english letters or 52 with uppercased

	func firstUniqChar(_ s: String) -> Int {

		var hashTable: [Character: [Int]] = [:]

		for (index, char) in s.enumerated() {
			hashTable[char, default: []].append(index)
		}

		return hashTable.values
			.filter { $0.count == 1 }
			.flatMap { $0 }
			.min()
		?? -1
	}
}

let solution = Solution()
print(solution.firstUniqChar(s))
