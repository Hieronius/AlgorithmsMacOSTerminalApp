//
//  118. Pascal's Triangle.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 17.03.2025.
//

import Foundation

// MARK: 118. Pascal's Triangle

class Solution {

	// MARK: Time Complexity O(k) * O(k) * O(1) + O(k) + O(1) = O(k^2) in worst case
	// MARK: Space Complexity O(1) + O(m * n) + O(k) = O(m * n + k)
	// triangle.count = m
	// triangle[0].count = n
	// numRows = k

	func generate(_ numRows: Int) -> [[Int]] {

		var currentRow = 0 // Space Complexity O(1)
		var triangle: [[Int]] = [] // Space Complexity O(m * n)

		// Time Complexity up to O(k)
		while currentRow < numRows {

			var row: [Int] = [] // Space Complexity O(k) in worst case (reusable)

			// Time Complexity up to O(k) in worst case
			for index in 0...currentRow {

				if index == 0 || index == currentRow {
					row.append(1) // Time Complexity up to O(1)
				} else {
					// Space Complexity O(1) (reusable)
					let element = triangle[currentRow-1][index-1] + triangle[currentRow-1][index]
					row.append(element) // Time Complexity up to O(1)
				}
			}

			triangle.append(row) // Time Complexity O(k) in worst case

			currentRow += 1 // Time Complexity O(1)
		}

		return triangle

	}
}
