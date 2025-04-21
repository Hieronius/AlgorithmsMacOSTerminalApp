//
//  1200. Minimum Absolute Difference.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 10.04.2025.
//

import Foundation

// MARK: 1200. Minimum Absolute Difference

class Solution {

	// MARK: Time Complexity O(n log n) + O(n) + O(n) = O(n log n)
	// MARK: Space Complexity O(n)

	func minimumAbsDifference(_ arr: [Int]) -> [[Int]] {

		// Time O(n log n) where n = arr.count | Space O(n) where n = arr.count
		let sortedAr = arr.sorted()

		// Space O(1)
		var minDif = Int.max

		// Space O(1)
		var index = 0

		// Space O(up to n) where n = arr.count)
		var answer: [[Int]] = []

		// Time O(n) where n = arr.count
		while index < sortedAr.count - 1 {

			// Space O(1)
			let leftElement = sortedAr[index]
			// Space O(1)
			let rightElement = sortedAr[index+1]
			// Time O(1) | Space O(1)
			let absDif = abs(leftElement - rightElement)

			// Time O(1)
			minDif = min(minDif, absDif)
			// Time O(1)
			index += 1
		}
		// Time O(1)
		index = 0

		// Time O(n) where n = arr.count
		while index < sortedAr.count - 1 {

			// Space O(1)
			let leftElement = sortedAr[index]
			// Space O(1)
			let rightElement = sortedAr[index+1]
			// Space O(1)
			let absDif = abs(leftElement - rightElement)

			// Time O(1) + Time O(1)
			if absDif == minDif { answer.append([leftElement, rightElement]) }

			// Time O(1)
			index += 1
		}

		return answer
	}
}
