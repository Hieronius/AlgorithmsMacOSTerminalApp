//
//  733. Flood Fill.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 04.10.2026.
//

import Foundation

// MARK: Problem Name: 733. Flood Fill

// MARK: Stats: 02.10.26 - 04.10.26 2h

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
	
	func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
		
		guard image.count > 0 else { return [] }
		
		var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: image[0].count), count: image.count)
		
		var result = image
		let oldColor = result[sr][sc]
		
		// sr - row, sc - col from LeetCode
		var stack: [(Int, Int)] = [(sr, sc)]
		
		visited[sr][sc] = true
		result[sr][sc] = color
		
		func isValid(_ row: Int, _ col: Int) -> Bool {
			
			if (row >= 0 && row < result.count) &&
				(col >= 0 && col < result[row].count) {
				
				if result[row][col] == oldColor && !visited[row][col] {
					return true
				} else {
					return false
				}
			} else {
				return false
			}
		}
		
		while !stack.isEmpty {
			
			let (row, col) = stack.removeLast()
			
			// top tile
			if isValid(row + 1, col) {
				result[row + 1][col] = color
				visited[row + 1][col] = true
				stack.append((row + 1, col))
			}
			
			// bottom tile
			if isValid(row - 1,col) {
				result[row - 1][col] = color
				visited[row - 1][col] = true
				stack.append((row - 1, col))
			}
			
			// right tile
			if isValid(row, col + 1) {
				result[row][col + 1] = color
				visited[row][col + 1] = true
				stack.append((row, col + 1))
			}
			
			// left tile
			if isValid(row, col - 1) {
				result[row][col - 1] = color
				visited[row][col - 1] = true
				stack.append((row, col - 1))
			}
		}
		return result
	}
