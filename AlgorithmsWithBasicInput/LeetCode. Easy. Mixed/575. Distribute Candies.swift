//
//  575. Distribute Candies.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 16.04.2025.
//

import Foundation

// MARK: 575. Distribute Candies

let candies1 = [1,1,2,2,3,3]

class Solution {

	// MARK: Time Complexity O(n)
	// MARK: Space Complexity O(n)

	func distributeCandies(_ candyType: [Int]) -> Int {

		let amount = candyType.count / 2
		let hashSet = Set(candyType)
		let types = hashSet.count

		return types <= amount ? types : amount
	}
}

let solution = Solution()
print(solution.distributeCandies(candies1))
