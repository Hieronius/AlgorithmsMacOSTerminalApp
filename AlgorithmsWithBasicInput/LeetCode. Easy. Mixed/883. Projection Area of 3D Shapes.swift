//
//  883. Projection Area of 3D Shapes.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 23.03.2025.
//

import Foundation

// MARK: 883. Projection Area of 3D Shapes

let grid1 = [[1,2],[3,4]]
let grid2 = [[2]]
let grid3 = [[1,0],[0,2]]
let grid4 = [[1,1,1],[1,0,1],[1,1,1]]
let grid5 = [[1,0],[0,2]]



class Solution {

	// MARK: Time Complexity O(n) * O(m) * O(1) = O(n * m)
	// MARK: Space Complexity O(1)
	// grid.count = n
	// grid[i].count = m
	// m == n

	func projectionArea(_ grid: [[Int]]) -> Int {

		var topVolume = 0 // Space Complexity O(1)
		var frontVolume = 0 // Space Complexity O(1)
		var sideVolume = 0 // Space Complexity O(1)

		// Time Complexity O(n)
		for row in 0..<grid.count {

			// Time Complexity O(1) + O(m)
			frontVolume += grid[row].max()!

			// Time Complexity O(n) + O(m)
			let max = (grid.map { $0[row] }.max())!

			// Time Complexity O(1)
			sideVolume += max

			// Time Complexity O(m)
			for col in 0..<grid.count {

				// Time Complexity O(1)
				if grid[row][col] > 0 {

					// Time Complexity O(1)
					topVolume += 1
				}
			}
		}

		// Time Complexity O(1)
		return topVolume + frontVolume + sideVolume
	}
}

let solution = Solution()
print(solution.projectionArea(grid1))
print(solution.projectionArea(grid2))
print(solution.projectionArea(grid3))
print(solution.projectionArea(grid4))
print(solution.projectionArea(grid5))
