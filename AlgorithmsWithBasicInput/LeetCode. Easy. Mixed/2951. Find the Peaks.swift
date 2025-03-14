//
//  2951. Find the Peaks.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 13.03.2025.
//

import Foundation

// MARK: 2951. Find the Peaks

let s1 = [2,4,4]
let s2 = [1,4,3,8,5]

class Solution {

	// MARK: Time Complexity O(n) * O(1) = O(n)
	// MARK: Space Complexity O(n) + O(1) = O(n)

	func findPeaks(_ mountain: [Int]) -> [Int] {

		var index = 1 // Space Complexity O(1)
		var answer: [Int] = [] // Space Complexity O(n)

		// Time Complexity O(n)
		while index < mountain.count - 1 {
			
			if (mountain[index] > mountain[index - 1]) &&
				(mountain[index] > mountain[index + 1]) {
				answer.append(index) // Time Complexity O(1)
			}
			index += 1 // Time Complexity O(1)
		}

		return answer
	}
}

let solution = Solution()
print(solution.findPeaks(s1))
print(solution.findPeaks(s2))
