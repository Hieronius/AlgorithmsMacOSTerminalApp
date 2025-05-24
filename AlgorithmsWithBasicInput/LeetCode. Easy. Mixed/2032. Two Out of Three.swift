//
//  2032. Two Out of Three.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 18.03.2025.
//

import Foundation

// MARK: 2032. Two Out of Three

let nums1 = [1,1,3,2]
let nums2 = [2,3]
let nums3 = [3]

class Solution {

	// MARK: Time Complexity O(min(m, n) + O(min(n, k) + O(min(k, m) + O(m + n + k)
	// MARK: Time Complexity Total = O(m + n + k)
	// MARK: Space Complexity O(m) + O(n) + O(k) + O(min(n, k) + O(min(k, m) + min(m, n)
	// MARK: Space Complexity Total = O(m + n + k)
	// nums1.count = m
	// nums2.count = n
	// nums3.count = k

	func twoOutOfThree(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int]) -> [Int] {

		// Time Complexity O(m) Space O(m)
		let set1 = Set(nums1)

		// Time Complexity O(n) Space O(n)
		let set2 = Set(nums2)

		// Time Complexity O(k) Space O(k)
		let set3 = Set(nums3)

		// Time Complexity O(min(m, n) / Space O(min(m, n)
		let intersection1 = set1.intersection(set2)

		// Time Complexity O(min(n, k) / Space O(min(n, k)
		let intersection2 = set2.intersection(set3)

		// Time Complexity O(min(k, m) / Space O(min(k, m)
		let intersection3 = set3.intersection(set1)

		// Time Complexity O(m + n + k) / Space O(m + n + k)
		let result = Array(intersection1.union(intersection2).union(intersection3))

		return result
	}
}

let solution = Solution()
print(solution.twoOutOfThree(nums1, nums2, nums3))
