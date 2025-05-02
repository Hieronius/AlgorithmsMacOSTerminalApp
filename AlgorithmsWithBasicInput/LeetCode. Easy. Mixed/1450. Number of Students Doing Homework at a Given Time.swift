//
//  1450. Number of Students Doing Homework at a Given Time.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 18.03.2025.
//

import Foundation

// MARK: 1450. Number of Students Doing Homework at a Given Time

class Solution {

	// MARK: Time Complexity
	// MARK: Space Complexity
	// startTime.count = n

	func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {

		var index = 0 // Space Complexity O(1)
		var counter = 0 // Space Complexity O(1)

		// Time Complexity O(n)
		while index < startTime.count {

			// Time Complexity O(1)
			if startTime[index] <= queryTime &&
				endTime[index] >= queryTime {
				counter += 1 // Time Complexity O(n)
			}
			index += 1 // Time Complexity O(n)
		}
		return counter
	}
}
