//
//  3516. Find Closest Person.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 27.07.2026.
//

import Foundation

// MARK: Problem Name: 3516. Find Closest Person

// MARK: Stats: 27.07.26. Solved in 2 min

// MARK: CODE HERE

class Solution {
	func findClosest(_ x: Int, _ y: Int, _ z: Int) -> Int {
		
		// x = 2, z = 4, y = 7
		if abs(z - y) > abs(z - x) {
			return 1
		} else if abs(z - y) < abs(z - x) {
			return 2
		} else {
			return 0
		}
	}
}
