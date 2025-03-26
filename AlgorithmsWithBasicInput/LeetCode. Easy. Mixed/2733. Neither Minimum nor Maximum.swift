//
//  2733. Neither Minimum nor Maximum.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 18.03.2025.
//

import Foundation

// MARK: 2733. Neither Minimum nor Maximum

let nums1 = [3,2,1,4]
let nums2 = [1, 2]

class Solution {

	// MARK: Time Complexity O(n log n) + O(1) + O(n) = O(n log n)
	// MARK: Space Complexity O(n)

	func findNonMinOrMax(_ nums: [Int]) -> Int {

		guard nums.count > 2 else { return -1 }

		let temp = nums.sorted() // Time Complexity O(n log n), Space O(n)
		let length = temp.count // Time Complexity O(1)

		// Time Complexity O(n)
		guard let random = temp[1..<length-1].randomElement() else { return -1 }

		return random
	}
}

let solution = Solution()
print(solution.findNonMinOrMax(nums1))
print(solution.findNonMinOrMax(nums2))
