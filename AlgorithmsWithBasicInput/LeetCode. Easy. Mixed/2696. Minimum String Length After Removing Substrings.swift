//
//  2696. Minimum String Length After Removing Substrings.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 09.03.2025.
//

import Foundation

// MARK: 2696. Minimum String Length After Removing Substrings

//let s1 = "ABFCACDB"
//let s2 = "ACBBD"

class Solution {

	// MARK: Time Complexity O(n) * O(n) = O(n^2)
	// MARK: Space Complexity O(n)

	func minLength(_ s: String) -> Int {

		var tempString = s // Space Complexity O(n)

		// Time Complexity O(n) in worst case
		// Time Complexity O(n) in worst case for String.contains method
		while tempString.contains("AB") || tempString.contains("CD") {

			if tempString.contains("AB") {

				// Time Complexity O(n) in worst case
				tempString = tempString.replacingOccurrences(of: "AB", with: "")
			} else if tempString.contains("CD") {

				// Time Complexity O(n) in worst case
				tempString = tempString.replacingOccurrences(of: "CD", with: "")
			}
		}
		return tempString.count // O(1)
	}
}

//let solution = Solution()
//print(solution.minLength(s1))
//print(solution.minLength(s2))
