//
//  2639. Find the Width of Columns of a Grid.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 17.04.2025.
//

import Foundation

// MARK: 2639. Find the Width of Columns of a Grid

let grid1 = [
	[1],
	[22],
	[333]
]
let grid2 = [
	[-15,1,3],
	[15,7,12],
	[5,6,-2]
]

class Solution {

	// MARK: Time Complexity O(m * n)
	// MARK: Space Complexity O(n)

	func findColumnWidth(_ grid: [[Int]]) -> [Int] {

		let rowsSize = grid.count
		let colsSize = grid[0].count

		var col = 0
		var cols: [Int] = []
		var answer: [Int] = []

		while col < colsSize {

			for row in 0..<rowsSize {

				cols.append(grid[row][col])
			}
			let colsOfString = cols.map { String($0) }
			let maxCol = colsOfString.max { $0.count < $1.count }
			guard let count = maxCol?.count else { return [] }
			answer.append(count)
			cols = []
			col += 1
		}

		return answer
	}
}

let solution = Solution()
//print(solution.findColumnWidth(grid1))
print(solution.findColumnWidth(grid2))
