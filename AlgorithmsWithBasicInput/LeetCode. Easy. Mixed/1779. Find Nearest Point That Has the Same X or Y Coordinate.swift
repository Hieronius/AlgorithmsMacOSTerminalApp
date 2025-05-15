//
//  1779. Find Nearest Point That Has the Same X or Y Coordinate.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 16.04.2025.
//

import Foundation

// MARK: 1779. Find Nearest Point That Has the Same X or Y Coordinate

class Solution {

	// MARK: Time Complexity O(n)
	// MARK: Space Complexity O(n)

	func nearestValidPoint(_ x: Int, _ y: Int, _ points: [[Int]]) -> Int {

		var answer: [[Int]] = []

		for (index, point) in points.enumerated() {

			if point[0] == x || point[1] == y {
				let dist = findManhattanDistance(x, y, point[0], point[1])
				let data = [index, dist]
				answer.append(data)
			}
		}

		if answer.isEmpty { return -1 }

		var min = answer[0]

		for data in answer[1..<answer.count] {
			if data[1] < min[1] { min = data }
		}
		return min[0]
	}

	// Time Complexity O(1)
	func findManhattanDistance(_ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int) -> Int {
		abs(x1 - x2) + abs(y1 - y2)
	}
}
