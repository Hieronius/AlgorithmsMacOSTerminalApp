//
//  3033. Modify the Matrix.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 23.04.2025.
//

import Foundation

// MARK: 3033. Modify the Matrix

let matrix1 = [[1,2,-1],[4,-1,6],[7,8,9]]
let matrix2 = [[-1,0,0,2,2],[2,0,0,2,1],[4,3,2,1,1],[-1,-1,0,2,4],[1,0,3,-1,0]]

class Solution {

	// MARK: Time Complexity O(m * n)
	// MARK: Space Complexity O(m * n)

	func modifiedMatrix(_ matrix: [[Int]]) -> [[Int]] {

		let cols = matrix[0].count
		let rows = matrix.count
		var answer = matrix

		for col in 0..<cols {

			var maxV = 0
			var negatives: [(Int, Int)] = []

			for row in 0..<rows {

				let num = matrix[row][col]

				if num == -1 {
					negatives.append((row, col))
				} else {
					maxV = max(maxV, num)
				}
			}

			for num in negatives {
				answer[num.0][num.1] = maxV
			}
		}

		return answer
	}
}

let solution = Solution()
//print(solution.modifiedMatrix(matrix1))
print(solution.modifiedMatrix(matrix2))
