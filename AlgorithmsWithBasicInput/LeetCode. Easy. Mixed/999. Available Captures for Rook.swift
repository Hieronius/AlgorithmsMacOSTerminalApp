//
//  999. Available Captures for Rook.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 11.04.2025.
//

import Foundation

// MARK: 999. Available Captures for Rook

let board1: [[Character]] = [[".",".",".",".",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".","R",".",".",".","p"],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."]]

let board2: [[Character]] = [[".",".",".",".",".",".",".","."],[".","p","p","p","p","p",".","."],[".","p","p","B","p","p",".","."],[".","p","B","R","B","p",".","."],[".","p","p","B","p","p",".","."],[".","p","p","p","p","p",".","."],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."]]

class Solution {

	// MARK: Time Complexity O(m * n) or O(8 * 8) so O(1)
	// MARK: Space Complexity O(m * n) or O(8 * 8) so O(1)

	func numRookCaptures(_ board: [[Character]]) -> Int {

		var rookPos = (0, 0)
		var pawns = 0

		for row in 0..<8 {

			for col in 0..<8 {

				if board[row][col] == "R" {
					rookPos.0 = row
					rookPos.1 = col
				}
			}
		}

		var left: [Character] = []
		var right: [Character] = []
		var top: [Character] = []
		var bottom: [Character] = []

		for row in 0..<8 {

			for col in 0..<8 {

				if row == rookPos.0 {
					if col < rookPos.1 {
						left.append(board[row][col])
					} else if col > rookPos.1 {
						right.append(board[row][col])
					}
				}

				if col == rookPos.1 {
					if row < rookPos.0 {
						bottom.append(board[row][col])
					} else if row > rookPos.0 {
						top.append(board[row][col])
					}
				}
			}
		}

		for char in left.reversed() {
			if char == "B" {
				break
			} else if char == "p" {
				pawns += 1
				break
			}
		}


		for char in right {
			if char == "B" {
				break
			} else if char == "p" {
				pawns += 1
				break
			}
		}

		for char in top {
			if char == "B" {
				break
			} else if char == "p" {
				pawns += 1
				break
			}
		}

		for char in bottom.reversed() {
			if char == "B" {
				break
			} else if char == "p" {
				pawns += 1
				break
			}
		}
		return pawns
	}
}

let solution = Solution()
//print(solution.numRookCaptures(board1))
print(solution.numRookCaptures(board2))
