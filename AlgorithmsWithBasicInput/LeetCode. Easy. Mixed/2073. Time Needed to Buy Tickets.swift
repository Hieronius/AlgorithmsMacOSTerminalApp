//
//  2073. Time Needed to Buy Tickets.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 09.04.2025.
//

import Foundation

// MARK: 2073. Time Needed to Buy Tickets

let tickets1 = [2,3,2], k1 = 2
let tickets2 = [5,1,1,1], k2 = 0

class Solution {

	// MARK: Time Complexity O(1...temp[k] * tickets.count)
	// MARK: Space Complexity O(tickets.count or n)

	func timeRequiredToBuy(_ tickets: [Int], _ k: Int) -> Int {

		// Space Complexity O(1)
		var counter = 0

		// Space Complexity O(1)
		var index = 0

		// Space Complexity O(tickets.count)
		var temp = tickets

		// Time Complexity O(1...temp[k])
		while temp[k] > 0 {

			// Time Complexity (1)
			if temp[index] > 0 {

				// Time Complexity (1)
				temp[index] -= 1

				// Time Complexity (1)
				counter += 1
			}

			// Time Complexity (1)
			if index == temp.count - 1 {

				// Time Complexity (1)
				index = 0
			} else {

				// Time Complexity (1)
				index += 1
			}
		}
		return counter
	}
}

let solution = Solution()
