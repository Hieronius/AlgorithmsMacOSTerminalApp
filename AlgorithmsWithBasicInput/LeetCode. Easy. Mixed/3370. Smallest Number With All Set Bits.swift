//
//  3370. Smallest Number With All Set Bits.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 17.03.2025.
//

import Foundation

// MARK: 3370. Smallest Number With All Set Bits

class Solution {

	// MARK: Time Complexity O(n log n)
	// MARK: Space Complexity O(log n) due to string conversion

	func smallestNumber(_ n: Int) -> Int {

		var temp = n // Space Complexity O(1)

		// Time Complexity O(n) * O(log n) * O(string.count or 1) * O(1)
		while String(temp, radix: 2).contains("0") {
			temp += 1 // Time Complexity O(1)
		}

		return temp
	}
}
