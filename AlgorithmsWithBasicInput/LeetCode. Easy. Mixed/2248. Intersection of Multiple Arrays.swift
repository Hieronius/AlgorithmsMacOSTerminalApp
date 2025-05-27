//
//  2248. Intersection of Multiple Arrays.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 21.04.2025.
//

import Foundation

// MARK: 2248. Intersection of Multiple Arrays

let nums1 = [[3,1,2,4,5],[1,2,3,4],[3,4,5,6]]
let nums2 = [[1,2,3],[4,5,6]]

class Solution {

	// MARK: Time Complexity O(m * n) due to FlatMap iteration of all sub arrays
	// MARK: Space Complexity O(n)

	func intersection(_ nums: [[Int]]) -> [Int] {

		let size = nums.count
		var result: [Int] = []

		var hashTable: [Int: Int] = [:]

		nums.flatMap { $0 }.forEach { hashTable[$0, default: 0] += 1

		}

		for item in hashTable {
			if hashTable[item.key] == size { result.append(item.key) }
		}

		return result.sorted()
	}
}

let solution = Solution()
print(solution.intersection(nums1))
