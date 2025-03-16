//
//  136. Single Number.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 12.03.2025.
//

import Foundation

// MARK: 136. Single Number

let ar1 = [2,2,1] // 1
let ar2 = [4,1,2,1,2] // 4
let ar3 = [1] // 1


class Solution {

	// MARK: Time Complexity O(n) * O(1) = O(n)
	// MARK: Space Complexity O(1)

	func singleNumber(_ nums: [Int]) -> Int {

		var accumulator = 0 // Space Complexity O(1)

		for num in nums { // Time Complexity O(n)
			accumulator ^= num // Time Complexity O(1)
		}

		return accumulator
	}
}

//let solution = Solution()
//print(solution.singleNumber(ar1))
//print(solution.singleNumber(ar2))
//print(solution.singleNumber(ar3))
