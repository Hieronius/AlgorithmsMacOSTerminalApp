//
//  54. Spiral Matrix.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 28.01.2025.
//

import Foundation

class Solution {

	func spiralOrder(_ matrix: [[Int]]) -> [Int] {

		// Utilities

		var solution: [Int] = []
		var m = matrix.count
		var n = matrix[0].count

		var topLeftAngle = (row: 0, col: 0)
		var topRightAngle = (row: 0, col: n - 1)
		var bottomLeftAngle = (row: m - 1, col: 0)
		var bottomRightAngle = (row: m - 1, col: n - 1)

		// Main Loop

		while solution.count < m * n {

			// 1. loop from left to right top angle
			for col in topLeftAngle.col...topRightAngle.col {
				solution.append(matrix[topLeftAngle.row][col])
			}
			topLeftAngle.row += 1
			topRightAngle.row += 1

			// 1.1 Stop the algorithm if all elements been added to solution

			if solution.count >= m * n {
				break
			}

			// 2. loop from top to bottom right angle
			for row in topRightAngle.row...bottomRightAngle.row {
				solution.append(matrix[row][topRightAngle.col])
			}
			topRightAngle.col -= 1
			bottomRightAngle.col -= 1

			// 2.1 Stop the algorithm if all elements been added to solution

			if solution.count >= m * n {
				break
			}

			// 3. loop from right to left bottom angle
			for col in (bottomLeftAngle.col...bottomRightAngle.col).reversed() {
				solution.append(matrix[bottomLeftAngle.row][col])
			}
			bottomLeftAngle.row -= 1
			bottomRightAngle.row -= 1

			// 3.1 Stop the algorithm if all elements been added to solution

			if solution.count >= m * n {
				break
			}

			// 4. loop from bottom to top left angle
			for row in (topLeftAngle.row...bottomLeftAngle.row).reversed() {
				solution.append(matrix[row][bottomLeftAngle.col])
			}
			topLeftAngle.col += 1
			bottomLeftAngle.col += 1

			// 4.1 Stop the algorithm if all elements been added to solution

			if solution.count >= m * n {
				break
			}

		}
		return solution
	}
}
