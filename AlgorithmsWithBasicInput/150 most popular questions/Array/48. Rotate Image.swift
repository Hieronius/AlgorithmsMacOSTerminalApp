import Foundation

class Solution {

	func rotate(_ matrix: inout [[Int]]) {

		// Size

		let n = matrix.count

		// Reverse

		matrix.reverse()

		// Transpose

		for row in 0..<n {

			for col in 0..<n {

				if row == col {
					continue

				} else if row > col {
					continue

				} else {

					let temp = matrix[row][col]
					matrix[row][col] = matrix[col][row]
					matrix[col][row] = temp
				}
			}
		}
	}
}
