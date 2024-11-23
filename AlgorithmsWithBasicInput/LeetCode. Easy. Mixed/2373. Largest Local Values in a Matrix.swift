//
//  2373. Largest Local Values in a Matrix.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 15.11.2024.
//

import Foundation

/*
 class Solution {
	 func largestLocal(_ grid: [[Int]]) -> [[Int]] {

	 let size = grid.count - 2

	 var result = Array(repeating: Array(repeating: 0, count: size),
						count: size)

	 for row in 0..<size {
		 for col in 0..<size {
			 var maxLocal = max(grid[row][col], grid[row][col+1], grid[row][col+2])
			 maxLocal = max(maxLocal, grid[row+1][col], grid[row+1][col+1], grid[row+1][col+2])
			 maxLocal = max(maxLocal, grid[row+2][col], grid[row+2][col+1], grid[row+2][col+2])
			 result[row][col] = maxLocal
		 }
	 }
	 return result
 }
 }
 */
