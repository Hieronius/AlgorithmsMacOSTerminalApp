//
//  3432. Count Partitions with Even Sum Difference.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 03.03.2025.
//

import Foundation

// MARK: 3432. Count Partitions with Even Sum Difference

//let ar1 = [10,10,3,7,6] // 4
//let ar2 = [1,2,2] // 0
//let ar3 = [2,4,6,8] // 3

class Solution {

	// MARK: Time Complexity O(n^2) but due to small constraints (ar.length <= 100) it will do
	// MARK: Space Complexity O(1)

	func countPartitions(_ nums: [Int]) -> Int {

		guard nums.count > 1 else { return 0 }

		let n = nums.count // Space Complexity O(1)
		var index = 1 // Space Complexity O(1)
		var counter = 0 // Space Complexity O(1)

		while index < n { // Time Complexity O(n)

			let leftArSum = nums[0...index].reduce(0, +) // Time Complexity O(n)
			let rightArSum = nums[index+1..<n].reduce(0, +) // Time Complexity O(n)

			if (leftArSum - rightArSum) % 2 == 0 {
				counter += 1 // Time Complexity O(1)
			}
			index += 1 // Time Complexity O(1)
		}
		return counter
	}
}

//let solution = Solution()
//print(solution.countPartitions(ar1))
//print(solution.countPartitions(ar2))
//print(solution.countPartitions(ar3))
