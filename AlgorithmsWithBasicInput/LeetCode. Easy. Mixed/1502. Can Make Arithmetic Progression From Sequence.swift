//
//  1502. Can Make Arithmetic Progression From Sequence.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 15.04.2025.
//

import Foundation

// MARK: 1502. Can Make Arithmetic Progression From Sequence

class Solution {

	// MARK: Time Complexity O(n log n)
	// MARK: Space Complexity O(n)

	func canMakeArithmeticProgression(_ arr: [Int]) -> Bool {

		guard arr.count > 2 else { return true }

		let sortedAr = arr.sorted()

		for index in 0..<sortedAr.count - 2 {
			if (abs(sortedAr[index+1] - sortedAr[index])) != (abs(sortedAr[index+2] - sortedAr[index+1])) {
				return false
			}
		}

		return true
	}
}
