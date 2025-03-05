//
//  3258. Count Substrings That Satisfy K-Constraint I.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 02.03.2025.
//

import Foundation

//let s1 = "10101" // 12
//let k1 = 1

//let s2 = "1010101" // 25
//let k2 = 2
//
//let s3 = "11111" // 15
//let k3 = 1

class Solution {

	// MARK: Time Complexity is O(n^2) due to two nested loops with unlimited data set
	// MARK: Time Complexity of that specific problem is O(1-50^2)
	// MARK: Space Complexity is O(n) due to copy of input string s

	func countKConstraintSubstrings(_ s: String, _ k: Int) -> Int {

		guard !s.isEmpty else { return 0 }

		var counter = 0

		let stringAr = Array(s)

		var windowStart = 0

		while windowStart < stringAr.count {

			var window: [Character: Int] = [
				"0": 0,
				"1": 0
			]

			var windowEnd = windowStart

			while windowEnd < stringAr.count {

				let digit = stringAr[windowEnd]

				window[digit]! += 1

				if window["0"]! <= k || window["1"]! <= k {
					counter += 1

				} else {

					break
				}
				windowEnd += 1

			}
			windowStart += 1
		}

		return counter
	}
}

//let solution = Solution()
//print(solution.countKConstraintSubstrings(s1, k1))
//print(solution.countKConstraintSubstrings(s2, k2))
//print(solution.countKConstraintSubstrings(s3, k3))
