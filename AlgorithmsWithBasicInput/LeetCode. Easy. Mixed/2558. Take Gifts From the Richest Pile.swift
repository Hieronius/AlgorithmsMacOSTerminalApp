//
//  2558. Take Gifts From the Richest Pile.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 18.03.2025.
//

import Foundation

// MARK: 2558. Take Gifts From the Richest Pile

class Solution {

	// MARK: Time Complexity O(k) * O(n) + O(n) * O(1) + O(n) = O(k * n)
	// MARK: Space Complexity O(1) + O(1) = O(1)
	// gifts.count = n

	func pickGifts(_ gifts: [Int], _ k: Int) -> Int {

		var temp = gifts // Space Complexity O(n)
		var step = 0 // Space Complexity O(1)

		// Time Complexity O(k)
		while step < k {

			// Time Complexity O(n)
			guard let maxPile = temp.max() else { return -1 }

			// Time Complexity O(n)
			guard let maxPileIndex = temp.firstIndex(of: maxPile) else { return -1 }

			// Time Complexity O(1) * O(1) ???
			let newValue = sqrt(Double(temp[maxPileIndex]))

			// Time Complexity O(1)
			temp[maxPileIndex] = Int(newValue)

			// Time Complexity O(1)
			step += 1
		}
		// Time O(n) / Space O(1)
		let answer = temp.reduce(0, +)

		return answer
	}
}
