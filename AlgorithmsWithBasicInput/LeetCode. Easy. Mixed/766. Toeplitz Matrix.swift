//
//  766. Toeplitz Matrix.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 15.04.2025.
//

import Foundation

// MARK: 766. Toeplitz Matrix

let matrix1 = [[1,2,3,4],[5,1,2,3],[9,5,1,2]]

class Solution {

	// MARK: Time Complexity O(m * n)
	// MARK: Space Complexity O(1)

	func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {

		let m = matrix.count
		let n = matrix[0].count

		for row in 0..<m {

			for col in 0..<n {

				if row - 1 >= 0 && row - 1 < m &&
					col - 1 >= 0 && col - 1 < n {

					if matrix[row][col] != matrix[row-1][col-1] {
						return false
					}
				}
			}
		}

		return true
	}
}

let solution = Solution()
print(solution.isToeplitzMatrix(matrix1))
