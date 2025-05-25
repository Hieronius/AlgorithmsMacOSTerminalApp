//
//  1876. Substrings of Size Three with Distinct Characters.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 13.03.2025.
//

import Foundation

// MARK: 1876. Substrings of Size Three with Distinct Characters

let s1 = "xyzzaz"
let s2 = "aababcabc"

class Solution {

	// MARK: Time Complexity O(n) * O(3) = O(n)
	// MARK: Space Complexity O(n) + O(1) = O(n)

	func countGoodSubstrings(_ s: String) -> Int {

		guard !s.isEmpty else { return 0 }
		guard s.count > 2 else { return 0 }

		var counter = 0 // Space Complexity O(1)
		var window: [Character: Int] = [:] // Space Complexity O(n)
		var windowStart = 0 // // Space Complexity O(1)
		var windowEnd = 3 // Space Complexity O(1)
		var isValid = true // Space Complexity O(1)

		let charAr = Array(s) // Space Complexity O(n)

		// Time Complexity O(3) due to constraints
		for char in charAr[windowStart..<windowEnd] {

			// Time Complexity O(1)
			window[char, default: 0] += 1
		}

		// Time Complexity O(n)
		for value in window.values {
			if value > 1 {
				isValid = false // Time Complexity O(1)
			}
		}

		if isValid {
			counter += 1 // Time Complexity O(1)
		}

		// Time Complexity O(n)
		while windowEnd < charAr.count {

			isValid = true // Time Complexity O(1)

			// Space Complexity O(1)
			let nextChar = charAr[windowEnd]

			// Space Complexity O(1)
			let prevChar = charAr[windowStart]

			// Time Complexity O(1)
			window[nextChar, default: 0] += 1

			// Time Complexity O(1)
			if window[prevChar] == 0 {
				window[prevChar] = nil
			} else {
				window[prevChar]! -= 1
			}

			// Time Complexity O(n)
			for value in window.values {
				if value > 1 {

					// Time Complexity O(1)
					isValid = false
				}
			}

			if isValid {
				counter += 1 // Time Complexity O(1)
			}
			windowEnd += 1 // Time Complexity O(1)
			windowStart += 1 // Time Complexity O(1)
		}


		return counter
	}
}

//let solution = Solution()
//print(solution.countGoodSubstrings(s1))
//print(solution.countGoodSubstrings(s2))
