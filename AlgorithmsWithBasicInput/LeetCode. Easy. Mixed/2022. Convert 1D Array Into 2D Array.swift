//
//  2022. Convert 1D Array Into 2D Array.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 02.04.2025.
//

import Foundation

// MARK: 2022. Convert 1D Array Into 2D Array

let original = [1,2,3,4], m = 2, n = 2
let original1 = [1,2], m1 = 1, n1 = 1
let original2 = [3], m2 = 1, n2 = 2

class Solution {

	// MARK: Time Complexity O(m * n)
	// MARK: Space Complexity O(m * n)

	func construct2DArray(_ original: [Int], _ m: Int, _ n: Int) -> [[Int]] {

		// Time Complexity O(1)
		guard original.count == (m * n) else { return [] }

		// Time O(m * n) | Space O(m * n)
		var matrix = Array(repeating: Array(repeating: 0, count: n), count: m)

		// Space Complexity O(1)
		var index = 0

		// Time O(m * n)
		for row in 0..<m {
			for col in 0..<n {
				matrix[row][col] = original[index]
				index += 1
			}
		}

		return matrix
	}
}

let solution = Solution()
//print(solution.construct2DArray(original, m, n))
print(solution.construct2DArray(original2, m2, n2))
