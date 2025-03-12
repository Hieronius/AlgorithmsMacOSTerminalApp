//
//  3184. Count Pairs That Form a Complete Day I.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 06.03.2025.
//

import Foundation

// MARK: 3184. Count Pairs That Form a Complete Day I

//let hours1 = [12,12,30,24,24]
//let hours2 = [72,48,24,3]

class Solution {

	// MARK: Time Complexity O(n) * O(n - m) == O(n^2) due to nested for in loop
	// MARK: Space Complexity O(1) + O(1) == O(1)

	func countCompleteDayPairs(_ hours: [Int]) -> Int {

		var counter = 0 // Space Complexity O(1)
		let length = hours.count // Space Complexity O(1)

		for (index, value) in hours.enumerated() { // Time Complexity O(n)

			for nextValue in hours[index+1..<length] { // Time Complexity O(n - m)

				if (value + nextValue) % 24 == 0 {
					counter += 1 // Time Complexity O(1)
				}
			}
		}
		return counter
	}
}

//let solution = Solution()
//print(solution.countCompleteDayPairs(hours1))
//print(solution.countCompleteDayPairs(hours2))
