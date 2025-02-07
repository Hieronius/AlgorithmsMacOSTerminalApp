import Foundation

class Solution {
	func isValidSudoku(_ board: [[Character]]) -> Bool {

		// MARK: Edge Cases


		// MARK: Utilities

		var rowDict: [Character: Int] = [:]
		var colDict: [Character: Int] = [:]
		var boxDict: [Character: Int] = [:]

		// MARK: Check Rows

		for row in board {
			for cell in row {
				if cell != "." {
					rowDict[cell, default: 0] += 1
				}
			}
			for value in rowDict.values {
				if value > 1 {
					return false
				}
			}
			rowDict.removeAll()
		}

		// MARK: Check Columns

		for col in 0..<9 {
			for row in board {
				let element = row[col]
				if element != "." {
					colDict[element, default: 0] += 1
				}
			}
			for value in colDict.values {
				if value > 1 {
					return false
				}
			}
			colDict.removeAll()
		}

		// MARK: Check Boxes

		for box in 0..<9 {

			var startRow = (box / 3) * 3
			var startCol = (box % 3) * 3

			for row in startRow..<startRow+3 {
				for col in startCol..<startCol+3 {
					let element = board[row][col]
					if element != "." {
						boxDict[element, default: 0] += 1
					}
				}
			}

			for value in boxDict.values {
				if value > 1 {
					return false
				}
			}
			boxDict.removeAll()
		}

		return true

	}
}
