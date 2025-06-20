//
//  2595. Number of Even and Odd Bits.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 01.04.2025.
//

import Foundation

// MARK: 2595. Number of Even and Odd Bits

let n1 = 50
let n2 = 5

class Solution {

	// MARK: Time Complexity O(1)
	// MARK: Space Complexity O(1)

	func evenOddBit(_ n: Int) -> [Int] {

		var temp = n // Space Complexity O(n) or in practice O(32) or O(1)
		var bits: [Int] = [] // Space Complexity O(n) or O(32) or O(1)
		var oddCounter = 0 // Space Complexity O(1)
		var evenCounter = 0 // Space Complexity O(1)

		// Time Complexity O(n) or O(32) or O(1)
		while temp != 0 {

			// Time Complexity O(1)
			if temp & 1 == 1 {

				// Time Complexity O(1)
				bits.append(1)
			} else {

				// Time Complexity O(1)
				bits.append(0)
			}

			// Time Complexity O(1)
			temp >>= 1
		}

		// Time Complexity O(n) or O(32) or O(1)
		for (index, bit) in bits.enumerated() {

			// Time Complexity O(1)
			if bit == 1 && index % 2 == 0 {

				// Time Complexity O(1)
				evenCounter += 1

				// Time Complexity O(1)
			} else if bit == 1 && index % 2 != 0 {

				// Time Complexity O(1)
				oddCounter += 1
			}
		}
		return [evenCounter, oddCounter]
	}
}

let solution = Solution()
print(solution.evenOddBit(n1))
print(solution.evenOddBit(n2))
