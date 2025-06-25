//
//  2923. Find Champion I.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 19.03.2025.
//

import Foundation

// MARK: 2923. Find Champion I

class Solution {

	// MARK: Time Complexity O(k) * O(m) * O(1) = O(k * m)
	// MARK: Space Complexity O(1)
	// k = grid.count
	// m = grid[0].count

	func findChampion(_ grid: [[Int]]) -> Int {

		var winner = 0 // Space Complexity O(1)
		var biggestScore = 0 // Space Complexity O(1)

		// Time Complexity O(n) or O(k)
		for team in 0..<grid.count {

			// Time Complexity O(m) | Space O(1)
			let teamScore = grid[team].reduce(0, +)

			if  teamScore > biggestScore { // Time Complexity O(1)
				winner = team // Space O(1)
				biggestScore = teamScore // Space O(1)
			}
		}
		return winner
	}
}
