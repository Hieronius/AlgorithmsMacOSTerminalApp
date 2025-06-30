//
//  3452. Sum of Good Numbers.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 13.04.2025.
//

import Foundation

// MARK: 3452. Sum of Good Numbers

let nums = [1,3,2,1,5,4]
let k = 2

class Solution {

	// MARK: Time Complexity O(nums.count or n)
	// MARK: Space Complexity O(1)

	func sumOfGoodNumbers(_ nums: [Int], _ k: Int) -> Int {

		var index = 0
		var sum = 0

		while index < nums.count {

			let leftIndex = index - k
			let rightIndex = index + k

			if leftIndex >= 0 && rightIndex < nums.count {

				if nums[index] > nums[leftIndex] && nums[index] > nums[rightIndex] {
					sum += nums[index]
				}

			} else if leftIndex < 0 && rightIndex >= nums.count {
				sum += nums[index]

			} else if leftIndex >= 0 && rightIndex >= nums.count {

				if nums[index] > nums[leftIndex] {
					sum += nums[index]
				}

			} else if leftIndex < 0 && rightIndex < nums.count {

				if nums[index] > nums[rightIndex] {
					sum += nums[index]
				}
			}

			index += 1
		}
		return sum
	}
}

let solution = Solution()
print(solution.sumOfGoodNumbers(nums, k))
