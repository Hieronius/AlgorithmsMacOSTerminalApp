//
//  3248. Snake in Matrix.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 22.02.2025.
//

import Foundation

class Solution {

	// MARK: Speed Complexity O(n - commands.length), Memory Complexity - O(1)

	func finalPositionOfSnake(_ n: Int, _ commands: [String]) -> Int {

		guard n > 1 else { return -1 }
		guard n < 11 else { return -1 }

		// Start position of the snake

		var row = 0
		var col = 0

		// Follow commands to lead snake into final position

		for command in commands {

			switch command {
			case "UP": row -= 1
			case "DOWN": row += 1
			case "LEFT": col -= 1
			case "RIGHT": col += 1
			default: break
			}
		}

		return (row * n) + col
	}
}
