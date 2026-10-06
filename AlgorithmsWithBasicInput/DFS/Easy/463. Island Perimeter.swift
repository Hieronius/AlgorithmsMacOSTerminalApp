//
//  463. Island Perimeter.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 02.10.2026.
//

import Foundation

// MARK: Problem Name: 463. Island Perimeter

// MARK: Stats: 02.10.26 1h

// MARK: CODE HERE

class TreeNode {
	
	var val: Int
	var left: TreeNode?
	var right: TreeNode?
	
	init() {
		self.val = 0
		self.left = nil
		self.right = nil
	}
	
	init(val: Int) {
		self.val = val
		self.left = nil
		self.right = nil
	}
	
	init(
		val: Int,
		left: TreeNode?,
		right: TreeNode?
	) {
		self.val = val
		self.left = left
		self.right = right
	}
	
	init(_ val: Int) {
		self.val = val
		self.left = nil
		self.right = nil
	}
}

/// We use Node if it's not binary Tree, because other types can have multiple child notes when BinaryTreeNode can have only 2: left and right
class Node {
	var val: Int
	var children: [Node]
	init(_ val: Int) {
		self.val = val
		self.children = []
	}
}

// MARK: - Solution

class Solution {
	
	func islandPerimeter(_ grid: [[Int]]) -> Int {
		
		var total = 0
		
		for row in 0..<grid.count {
			for col in 0..<grid[row].count {
				total += checkTile(row,col)
			}
		}
		
		return total
		
		
		func checkTile(_ row: Int, _ col: Int) -> Int {
			
			guard grid[row][col] != 0 else { return 0 }
			
			// we encounter sand tile so it's basic perimeter is 4
			var perimeter = 4
			
			// check neighbours
			
			// check top neighbour
			if row - 1 >= 0 {
				if grid[row - 1][col] == 1 {
					perimeter -= 1
				}
			}
			
			// check bottom neighbour
			if row + 1 < grid.count {
				if grid[row + 1][col] == 1 {
					perimeter -= 1
				}
			}
			
			// check left neighbour
			if col - 1 >= 0 {
				if grid[row][col - 1] == 1 {
					perimeter -= 1
				}
			}
			
			// check right neighbour
			if col + 1 < grid[row].count {
				if grid[row][col + 1] == 1 {
					perimeter -= 1
				}
			}
			
			return perimeter
		}
