//
//  1351. Count Negative Numbers in a Sorted Matrix.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 08.03.2025.
//

import Foundation

// MARK: 1351. Count Negative Numbers in a Sorted Matrix

//let grid1 = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]
//let grid2 = [[3,2],[1,0]]

class Solution {

	// MARK: Time Complexity O(M*N) or O(n^2)
	// MARK: Space Complexity O(1)

	@_optimize(speed)
	func countNegatives(_ grid: [[Int]]) -> Int {

		guard !grid.isEmpty else { return 0} // Time Complexity O(1)

		var counter = 0 // Space Complexity O(1)
		var width = grid.count // Space Complexity O(1)
		var height = grid[0].count // Space Complexity O(1)

		for row in 0..<width { // Time Complexity (m * n) or n^2
			for col in 0..<height {
				if grid[row][col] < 0 {
					counter += 1 // Time Complexity O(1)
				}
			}
		}

		return counter
	}
}

//let solution = Solution()
//print(solution.countNegatives(grid1))
//print(solution.countNegatives(grid2))
