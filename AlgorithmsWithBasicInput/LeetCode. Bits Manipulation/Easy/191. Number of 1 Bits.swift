//
//  191. Number of 1 Bits.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 25.03.2025.
//

import Foundation

// MARK: 191. Number of 1 Bits

let n = 11 // 1011 in binary
let m =  12 // 1100 in binary

class Solution {

	// MARK: Time Complexity O(1) * O(1) = O(log n)
	// MARK: Space Complexity O(1)

	func hammingWeight(_ n: Int) -> Int {

		var temp = n // Space Complexity O(1)
		var counter = 0 // Space Complexity O(1)

		// Time Complexity O(1)
		while temp != 0 {
			counter += temp & 1 // Time Complexity O(1)
			temp >>= 1 // Time Complexity O(1)
		}

		return counter
	}
}

let solution = Solution()
print(solution.hammingWeight(n))
