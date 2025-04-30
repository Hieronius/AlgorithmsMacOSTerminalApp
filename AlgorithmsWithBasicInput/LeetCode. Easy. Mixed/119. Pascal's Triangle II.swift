//
//  119. Pascal's Triangle II.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 25.04.2025.
//

import Foundation

// MARK: 119. Pascal's Triangle II

class Solution {

	// MARK: Time Complexity O(m * n)
	// MARK: Space Complexity O(m * n)

	func getRow(_ rowIndex: Int) -> [Int] {

		var triangle: [[Int]] = []

		for i in 0...rowIndex {
			var row = [Int](repeating: 1, count: i + 1)

			for index in row.indices {

				if row.indices.count == 1 {
					row[index] = 1
				} else if row.indices.count == 2 {
					row = [1, 1]
				} else if index == row.indices.first {
					row[index] = 1
				} else if index == row.indices.last {
					row[index] = 1
				} else {
					row[index] = triangle[i-1][index-1] + triangle[i-1][index]
				}
			}
			triangle.append(row)
		}

		return triangle.last!
	}
}

let solution = Solution()
print(solution.getRow(4))
