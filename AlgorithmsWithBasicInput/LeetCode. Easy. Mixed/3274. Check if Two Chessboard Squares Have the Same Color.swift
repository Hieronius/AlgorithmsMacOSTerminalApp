//
//  3274. Check if Two Chessboard Squares Have the Same Color.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 07.04.2025.
//

import Foundation

// MARK: 3274. Check if Two Chessboard Squares Have the Same Color

let coordinate1 = "h7", coordinate2 = "h8"

class Solution {

	// MARK: Time Complexity O(8 * 8) or O(1)
	// MARK: Space Complexity O(1)

	func checkTwoChessboards(_ coordinate1: String, _ coordinate2: String) -> Bool {

		// Time Complexity O(8 * 8) | Space O(8 * 8)
		var board = Array(repeating: Array(repeating: "", count: 8), count: 8)

		// Space Complexity O(1)
		var position1 = (0, 0)

		// Space Complexity O(1)
		var position2 = (0, 0)

		// Time Complexity O(8)
		for row in 0..<8 {

			// Time Complexity O(8)
			for col in 0..<8 {

				// Time Complexity O(1)
				if (row % 2 == 0) && (col % 2 == 0) {
					board[row][col] = "White" // Time Complexity O(1)

				// Time Complexity O(1)
				} else if (row % 2 == 0) && (col % 2 != 0) {
					board[row][col] = "Black" // Time Complexity O(1)

				// Time Complexity O(1)
				} else if (row % 2 != 0) && (col % 2 == 0) {
					// Time Complexity O(1)
					board[row][col] = "Black"

				// Time Complexity O(1)
				} else {
					// Time Complexity O(1)
					board[row][col] = "White"
				}
			}
		}

		// Time Complexity O(8)
		for (index, value) in "abcdefgh".enumerated() {
			// Time Complexity O(1)
			if value == coordinate1.first! {
				// Time Complexity O(1)
				position1.1 = 8 - index - 1
			}
		}

		// Time Complexity O(1)
		for (index, value) in "abcdefgh".enumerated() {
			// Time Complexity O(1)
			if value == coordinate2.first! {
				// Time Complexity O(1)
				position2.1 = 8 - index - 1
			}
		}

		// Time Complexity O(1)
		position1.0 = 8 - Int(String(coordinate1.last!))!
		// Time Complexity O(1)
		position2.0 = 8 - Int(String(coordinate2.last!))!

		// Time Complexity O(1)
		return board[position1.0][position1.1] == board[position2.0][position2.1]

	}
}

let solution = Solution()
print(solution.checkTwoChessboards(coordinate1, coordinate2))
