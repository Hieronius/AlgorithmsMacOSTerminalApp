//
//  2716. Minimize String Length.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 09.03.2025.
//

import Foundation

// MARK: 2716. Minimize String Length

//let s1 = "aaabc"
//let s2 = "cbbd"
//let s3 = "baadccab"

class Solution {

	// MARK: Time Complexity O(n) + O(1) = O(n)
	// MARK: Space Complexity O(n)

	func minimizedStringLength(_ s: String) -> Int {

		var hashTable: [Character: Int] = [:] // Space Complexity O(n)

		for char in s { // Time Complexity O(n)
			hashTable[char, default: 0] += 1 // Time Complexity O(1)
		}

		// Time Complexity O(1)
		return hashTable.values.count
	}
}

//let solution = Solution()
//print(solution.minimizedStringLength(s1))
//print(solution.minimizedStringLength(s2))
//print(solution.minimizedStringLength(s3))
