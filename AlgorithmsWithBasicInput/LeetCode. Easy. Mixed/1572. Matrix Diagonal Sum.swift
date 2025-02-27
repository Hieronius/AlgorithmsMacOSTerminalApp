//
//  1572. Matrix Diagonal Sum.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 23.02.2025.
//

import Foundation

class Solution {

	// MARK: Speed Complexity O(n) because it's a two sequential loops so we add O(n) of the first one and O(n) of the second one, so in total it's O(n).
	// MARK: Memory Complexity O(1)

	func diagonalSum(_ mat: [[Int]]) -> Int {

		guard !mat.isEmpty else { return -1 }
		guard mat.count > 1 else { return mat[0][0] }
		guard mat.count < 101 else { return -1 }

		let n = mat.count
		let isMatrixOdd = n % 2 != 0

		var sum = 0

		var row = 0
		var col = 0

		while (row < n) && (col < n) {
			sum += mat[row][col]
			row += 1
			col += 1
		}

		row = 0
		col = n - 1

		while (row < n) && (col >= 0) {

			if !(isMatrixOdd && (row == n / 2) && (col == n / 2)) {
				sum += mat[row][col]
			}
			row += 1
			col -= 1
		}
		return sum
	}
}
