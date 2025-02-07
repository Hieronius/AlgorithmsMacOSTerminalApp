import Foundation

// MARK: Speed Complexity - O(M * N). Memory Complexity - O(M * N)

class Solution {

	func gameOfLife(_ board: inout [[Int]]) {

		// Utilities

		let rowCount = board.count
		let colCount = board[0].count

		var isAlive = false

		// Helpers

		func isInsideBoard(_ row: Int, _ col: Int) -> Bool {
			row >= 0 && row < rowCount && col >= 0 && col < colCount
		}

		func checkNeighbours(of cell: (rowC: Int, colC: Int)) -> Bool {

			var willBeAlive = false
			var neighboursSum = 0
			let givenCell = cell

			if board[cell.0][cell.1] == 1 {
				isAlive = true
			} else {
				isAlive = false
			}

			for cell in [(givenCell.rowC + 1, givenCell.colC + 1),
						 (givenCell.rowC - 1, givenCell.colC - 1),
						 (givenCell.rowC, givenCell.colC + 1),
						 (givenCell.rowC, givenCell.colC - 1),
						 (givenCell.rowC - 1, givenCell.colC),
						 (givenCell.rowC + 1, givenCell.colC),
						 (givenCell.rowC - 1, givenCell.colC + 1),
						 (givenCell.rowC + 1, givenCell.colC - 1)] {

				if isInsideBoard(cell.0, cell.1) {

					let cellToCheck = board[cell.0][cell.1]

					if cellToCheck == 1 || cellToCheck == 3 {
						neighboursSum += 1
					}
				}

			}

			if isAlive {

				if neighboursSum == 2 || neighboursSum == 3 {
					willBeAlive = true
				} else {
					willBeAlive = false
				}

			} else {

				if neighboursSum == 3 {
					willBeAlive = true
				} else {
					willBeAlive = false
				}
			}

			return willBeAlive
		}

		// 1. Traverse the matrix and add + 2 if cell should live next generation and add nothing if it should die (test neighbours for % 2 == 0, because it will be applied to (cell + 2) values

		for row in 0..<rowCount {

			for col in 0..<colCount {

				if checkNeighbours(of: (row, col)) {
					board[row][col] += 2
				}
			}
		}

		// 2. Traverse again and divide each values by 2 so if it was 0/1 -> dead, and if it was 2/3 -> lives

		for row in 0..<rowCount {

			for col in 0..<colCount {

				if board[row][col] == 2 || board[row][col] == 3 {
					board[row][col] = 1
				} else {
					board[row][col] = 0
				}
			}
		}
	}
}
