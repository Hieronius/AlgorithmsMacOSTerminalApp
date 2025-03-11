//
//  1207. Unique Number of Occurrences.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 09.03.2025.
//

import Foundation

// MARK: 1207. Unique Number of Occurrences

//let arr1 = [1,2,2,1,1,3] // true
//let arr2 = [1,2] // false
//let arr3 = [-3,0,1,-3,1,1,1,-3,10,0] // true

class Solution {

	// MARK: Time Complexity O(n) + O(1) = O(n)
	// MARK: Space Complexity O(n)

	func uniqueOccurrences(_ arr: [Int]) -> Bool {

		var hashTable: [Int: Int] = [:] // Space Complexity O(n)

		for num in arr { // Time Complexity O(n)
			hashTable[num, default: 0] += 1 // Time Complexity O(1)
		}

		// Time Complexity O(1) + O(n) = O(n)
		return hashTable.values.count == Set(hashTable.values).count
	}
}
