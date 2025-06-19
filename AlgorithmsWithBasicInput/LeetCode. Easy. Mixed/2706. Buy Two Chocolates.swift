//
//  2706. Buy Two Chocolates.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 21.04.2025.
//

import Foundation

// MARK: 2706. Buy Two Chocolates

let nums1 = [98,54,6,34,66,63,52,39]

class Solution {

	// MARK: Time Complexity O(n log n)
	// MARK: Space Complexity O(n)

	func buyChoco(_ prices: [Int], _ money: Int) -> Int {

		guard prices.count > 1 else { return money }

		let sortedPrices = prices.sorted()
		let bill = sortedPrices[0] + sortedPrices[1]

		return  bill <= money ? money - bill : money
	}
}

let solution = Solution()
print(solution.buyChoco(nums1, 62))
