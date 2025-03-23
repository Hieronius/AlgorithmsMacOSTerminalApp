//
//  1122. Relative Sort Array.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 14.03.2025.
//

import Foundation

// MARK: 1122. Relative Sort Array

let arr1 = [2,3,1,3,2,4,6,7,9,2,19]
let arr2 = [2,1,4,3,9,6]

let arr3 = [28,6,22,8,44,17]
let arr4 = [22,28,8,6]

class Solution {

	// MARK: Time Complexity O(n) * O(n) + O(n) * O(n) + O(n log n) = O(n^2)
	// MARK: Space Complexity O(n) + O(n) + O(n) + O(log n) = O(n)

	func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {

		var leftSide: [Int] = [] // Space Complexity O(n)
		var rightSide: [Int] = [] // Space Complexity O(n)
		var hashTable: [Int: Int] = [:] // Space Complexity O(n)

		// Time Complexity O(n)
		hashTable = arr1.reduce(into: [Int: Int]()) { (result, element) in
			result[element, default: 0] += 1
		}

		// Time Complexity O(n)
		for num in arr2 {

			if hashTable[num] != nil {

				let frequency = hashTable[num]!

				// Time Complexity O(n)
				for _ in 0..<frequency {
					leftSide.append(num)
				}

				// Time Complexity O(1)
				hashTable[num] = nil
			}
		}

		// Time Complexity O(n)
		for (key, value) in hashTable {

			// Time Complexity O(n)
			for _ in 0..<value {
				rightSide.append(key)
			}
		}

		// Space Complexity O (log n)
		// Time Complexity O(n log n)
		rightSide.sort(by: <)

		return leftSide + rightSide
	}
}

let solution = Solution()
print(solution.relativeSortArray(arr1, arr2))
print(solution.relativeSortArray(arr3, arr4))
