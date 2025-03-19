//
//  1304. Find N Unique Integers Sum up to Zero.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 18.03.2025.
//

import Foundation

// MARK: 1304. Find N Unique Integers Sum up to Zero

class Solution {

	// MARK: Time Complexity
	// MARK: Space Complexity
	// 1 < n < 1000 so n =

	func sumZero(_ n: Int) -> [Int] {

		guard n > 1 else { return [0] }

		var temp = n // Space Complexity O(1)
		var answer: [Int] = [] // Space Complexity O(n)

		if temp % 2 != 0 {
			answer.append(0) // Time Complexity O(1)
		}

		// Time Complexity O(n) in worst case if n == 1000
		while temp > 1 {

			answer.append(temp) // Time Complexity O(1)
			answer.append(-temp) // Time Complexity O(1)
			temp -= 2 // Time Complexity O(1)
		}
		return answer
	}
}
