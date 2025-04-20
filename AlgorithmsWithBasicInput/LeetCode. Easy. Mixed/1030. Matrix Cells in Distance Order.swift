//
//  1030. Matrix Cells in Distance Order.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 31.03.2025.
//

import Foundation

// MARK: 1030. Matrix Cells in Distance Order

let rows1 = 1
let cols1 = 2
let rCenter1 = 0
let cCenter1 = 0

let rows2 = 2
let cols2 = 3
let rCenter2 = 1
let cCenter2 = 2

class Solution {

	// MARK: Time Complexity O((m * n) * log (m * n))
	// MARK: Space Complexity O(m * n)

	func allCellsDistOrder(_ rows: Int, _ cols: Int, _ rCenter: Int, _ cCenter: Int) -> [[Int]] {

		var matrix: [[Int]] = [] // Space Complexity O(m * n)

		let center = [rCenter, cCenter] // Space Complexity O(1)

		// Time Complexity O(m * n)
		for row in 0..<rows {
			for col in 0..<cols {
				matrix.append([row, col])
			}
		}

		// Time Complexity O((m * n) * log (m * n))
		return matrix.sorted { first, second in

			let distA = distance(from: (center[0], center[1]), to: (first[0], first[1]))
			let distB = distance(from: (center[0], center[1]), to: (second[0], second[1]))

			if  distA == distB {

				return first[0] == second[0] ? first[1] < second[1] : first[0] < second[0]
			} else {
				return distA < distB
			}
		}
	}

	// Time Complexity O(1)
	func distance(from start: (Int, Int), to end: (Int, Int)) -> Int {
		abs(start.0 - end.0) + abs(start.1 - end.1)
	}
}

let solution = Solution()
print(solution.allCellsDistOrder(rows1, cols1, rCenter1, cCenter1))
print(solution.allCellsDistOrder(rows2, cols2, rCenter2, cCenter2))
