//
//  122. Best Time to Buy and Sell Stock II.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 28.11.2024.
//

import Foundation

/*
 Speed O(n), Memory O(1)
 class Solution {
	 func maxProfit(_ prices: [Int]) -> Int {

	 guard !prices.isEmpty else { return 0 }
	 guard prices.count > 1 else { return 0 }
	 guard prices.count > 2 else { return prices[1] > prices[0] ? prices[1] - prices[0] : 0 }

	 var minBuyPrice = 0
	 var maxSellPrice = 0
	 var profit = 0

	 var leftIndex = 0
	 var rightIndex = 1

		 while leftIndex < prices.count - 1 {

			 if prices[leftIndex] < prices[rightIndex] {

				 minBuyPrice = prices[leftIndex]
				 maxSellPrice = prices[rightIndex]
				 profit += maxSellPrice - minBuyPrice
			 }

			 leftIndex += 1
			 rightIndex += 1
		 }

	 return profit
 }
 }
 */
