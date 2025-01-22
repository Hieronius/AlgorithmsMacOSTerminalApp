//
//  1475. Final Prices With a Special Discount in a Shop.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 21.01.2025.
//

class Solution {

	func finalPrices(_ prices: [Int]) -> [Int] {

		guard !prices.isEmpty else { return [] }
		guard prices.count > 1 else { return prices }
		guard prices.count > 2 else { return prices[1] <= prices[0] ? [prices[0] - prices[1], prices[1]] : prices }

		var tempAr = prices
		var i = 0
		var j = 1

		while i < tempAr.count {

			while j < prices.count {

				if prices[j] <= tempAr[i] {
					tempAr[i] -= prices[j]
					break
					print(tempAr[i])

				} else {
					j += 1
				}
			}
			i += 1
			j = i + 1
		}
		return tempAr
	}
}
