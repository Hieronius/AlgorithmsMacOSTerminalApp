//
//  1394. Find Lucky Integer in an Array.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 17.04.2025.
//

import Foundation

// MARK: 1394. Find Lucky Integer in an Array

let arr1 = [2,2,3,4]

class Solution {

	// MARK: Time Complexity O(n)
	// MARK: Space Complexity O(m) where m = hashTable.count

	func findLucky(_ arr: [Int]) -> Int {

		let hashTable = arr.reduce(into: [:]) { table, value in
			table[value, default: 0] += 1
		}

		guard let lucky = (hashTable.filter {$0.key == $0.value}).max(by: { $0.key < $1.key }) else {
			return -1
		}

		return lucky.key
	}
}

let solution = Solution()
print(solution.findLucky(arr1))
