//
//  2042. Check if Numbers Are Ascending in a Sentence.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 05.04.2025.
//

import Foundation

// MARK: 2042. Check if Numbers Are Ascending in a Sentence

class Solution {

	// MARK: Time Complexity O(s.length)
	// MARK: Space Complexity O(s.length)

	func areNumbersAscending(_ s: String) -> Bool {

		// Time .split - O(s.length), .compact - O(s.length) * Int($0) - O(1) = O(s.length) | Space O(s.length)
		let sAr = s
			.split(separator: " ")
			.compactMap { Int($0) }

		// Time Complexity O(s.length - 1)
		for index in 0..<sAr.count - 1 {

			// Time Complexity O(1)
			if sAr[index] >= sAr[index + 1] {
				return false
			}
		}
		return true
	}
}
