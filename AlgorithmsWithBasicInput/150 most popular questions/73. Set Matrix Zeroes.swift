//
//  73. Set Matrix Zeroes.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 01.02.2025.
//

class Solution {

	func setZeroes(_ matrix: inout [[Int]]) {

		// Utilities

		let m = matrix.count
		let n = matrix[0].count

		// Flags

		var zeroFoundInFirstRow = false
		var zeroFoundInFirstCol = false

		// 1. Check first row/col for 0

		if matrix[0].contains(0) { zeroFoundInFirstRow = true }
		matrix.forEach { if $0[0] == 0 { zeroFoundInFirstCol = true } }

		// 2. Traverse the rest of matrix and if found 0 -> set to corresponding cells in first row/col

		for row in 1..<m {

			for col in 1..<n {

				if matrix[row][col] == 0 {
					matrix[0][col] = 0
					matrix[row][0] = 0
				}
			}
		}

		// 3. Set rows/cols to 0 accordingly to cells with 0 in first row/col

		(1..<m).forEach { row in
			if matrix[row][0] == 0 {
				matrix[row].indices.forEach { col in
					matrix[row][col] = 0
				}
			}
		}

		(1..<n).forEach { col in
			if matrix[0][col] == 0 {
				matrix.indices.forEach { row in
					matrix[row][col] = 0
				}
			}
		}

		// 4. If initially 0 was found in first row/col -> populate an antire row/col with 0

		if zeroFoundInFirstRow {
			matrix[0].indices.forEach { matrix[0][$0] = 0 }
		}

		if zeroFoundInFirstCol {
			matrix.indices.forEach { matrix[$0][0] = 0 }
		}
	}
}
