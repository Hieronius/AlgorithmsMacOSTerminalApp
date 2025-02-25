//
//  2974. Minimum Number Game.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 21.02.2025.
//

import Foundation

// Speed O(n^2), Memory O(n)

class Solution {

	func numberGame(_ nums: [Int]) -> [Int] {

		// Memory Complexity is O(n)
		// Because we add memory from all additional data structures together
		// tempAr O(n) + result O(n) = O(n)

		var tempAr = nums
		var result: [Int] = []

		while !tempAr.isEmpty {

			// while requires O(n/2)
			// min() requires O(n)
			// remove(at:) requires O(n)
			// So total speed is O(n) * O(n) due to being inside a single loop

			let numOfAlice = tempAr.remove(at: tempAr.firstIndex(of: tempAr.min()!)!)
			let numOfBob = tempAr.remove(at: tempAr.firstIndex(of: tempAr.min()!)!)

			result.append(numOfBob)
			result.append(numOfAlice)
		}

		return result
	}
}
