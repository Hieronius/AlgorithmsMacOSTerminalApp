//
//  1979. Find Greatest Common Divisor of Array.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 04.03.2025.
//

import Foundation

// MARK: 1979. Find Greatest Common Divisor of Array

//let nums1 = [2,5,6,9,10] // 2
//let nums2 = [7,5,6,8,3] // 1
//let nums3 = [3,3] // 3
//let nums4 = [6,7,9] // 3
//let nums5 = [37,36,21,8,10,45,32] // 1

class Solution {

	// MARK: Time Complexity O(n)
	// MARK: Space Complexity O(1)

	func findGCD(_ nums: [Int]) -> Int {

		guard !nums.isEmpty else { return 0 }

		var min = nums.min()! // Time Complexity O(n), Space Complexity O(1)
		var max = nums.max()! // Time Complexity O(n), Space Complexity O(1)

		while max % min != 0 { // Time Complexity O(log(min(a,b)) - will be dominated by O(n) because O(n) + O(log(min(a,b)) = O(n)
			let reminder = max % min
			max = min
			min = reminder
		}

		return min
	}
}

//let solution = Solution()
//print(solution.findGCD(nums1))
//print(solution.findGCD(nums2))
//print(solution.findGCD(nums3))
//print(solution.findGCD(nums4))
//print(solution.findGCD(nums5))

func findGCD(_ nums: [Int]) -> Int {

	guard !nums.isEmpty else { return 0 }

	var min = nums.min()!

	var max = nums.max()!

	while max % min != 0 {
		let reminder = max % min
		max = min
		min = reminder
	}

	return min
}
}
