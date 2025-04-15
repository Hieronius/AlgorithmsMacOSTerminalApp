//
//  2399. Check Distances Between Same Letters.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 07.04.2025.
//

import Foundation

// MARK: 2399. Check Distances Between Same Letters

let s = "abaccb", distance = [1,3,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
let s1 = "aa", distance1 = [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

class Solution {

	// MARK: Time Complexity O(s.count) - dominates
	// MARK: Space Complexity O(s.count) - dominates

	func checkDistances(_ s: String, _ distance: [Int]) -> Bool {

		// Time Complexity O(s.count) | Space O(s.count)
		let stringAr = Array(s)

		// Time Complexity O(26) | Space O(26)
		let letters = (97...122).map { UnicodeScalar($0)! }.map { Character($0) }

		// Time Complexity O(26) | Space O(26)
		let zipped = zip(letters, distance)

		// Time Complexity O(26) | Space O(26)
		var hashTable = Dictionary(uniqueKeysWithValues: zipped)

		// Space O(1)
		var firstIndex = 0

		// Time Complexity O(s.count)
		while firstIndex < stringAr.count {

			// Time Complexity O(1) | Space O(1)
			let charToCheck = stringAr[firstIndex]

			// Time Complexity O(1)
			if hashTable[charToCheck] != nil {

				// Time Complexity O(1) | Space O(1)
				let secondIndex = firstIndex + hashTable[charToCheck]! + 1
				// Time Complexity O(1)
				hashTable[charToCheck] = nil

				// Time Complexity O(1)
				if secondIndex >= stringAr.count || stringAr[secondIndex] != charToCheck {
					return false
				}
			}
			// Time Complexity O(1)
			firstIndex += 1
		}

		return true
	}
}

let solution = Solution()
print(solution.checkDistances(s, distance))
print(solution.checkDistances(s1, distance1))
