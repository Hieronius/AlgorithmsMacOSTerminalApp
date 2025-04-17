//
//  1385. Find the Distance Value Between Two Arrays.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 13.04.2025.
//

import Foundation

// MARK: 1385. Find the Distance Value Between Two Arrays

class Solution {

	// MARK: Time Complexity O(arr1.count * arr2.count or n^2)
	// MARK: Space Complexity O(1)

	func findTheDistanceValue(_ arr1: [Int], _ arr2: [Int], _ d: Int) -> Int {

		var counter = 0
		var numIsValid = false

		for first in arr1 {

			numIsValid = true

			for second in arr2 {

				if abs(first - second) <= d {
					numIsValid = false
				}
			}

			if numIsValid { counter += 1 }
		}
		return counter
	}
}
