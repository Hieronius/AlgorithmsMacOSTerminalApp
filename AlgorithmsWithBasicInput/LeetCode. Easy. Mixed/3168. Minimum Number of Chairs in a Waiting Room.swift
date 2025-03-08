//
//  3168. Minimum Number of Chairs in a Waiting Room.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 03.03.2025.
//

import Foundation

//let s1 = "EEEEEEE" // 7
//let s2 = "ELELEEL" // 2
//let s3 = "ELEELEELLL" // 3

class Solution {

	// MARK: Time Complexity O(n)
	// MARK: Space Complexity (1)

	func minimumChairs(_ s: String) -> Int {

		var maxChairs = 0 // Space Complexity O(1)
		var counter = 0 // Space Complexity O(1)


		for char in s { // Time Complexity O(n)

			if char == "E" {
				counter += 1 // Time Complexity O(1)
				maxChairs = max(maxChairs, counter) // Time Complexity O(1)
			} else if char == "L" {
				counter -= 1 // Time Complexity O(1)
			}
		}
		return max(maxChairs, counter) // Time Complexity O(1)
	}
}

//let solution = Solution()
//print(solution.minimumChairs(s1))
//print(solution.minimumChairs(s2))
//print(solution.minimumChairs(s3))
