//
//  501. Find Mode in Binary Search Tree.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 16.10.2026.
//

import Foundation

// MARK: Problem Name: 501. Find Mode in Binary Search Tree

// MARK: Stats: 16.10.26 30 min

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
	
	func findMode(_ root: TreeNode?) -> [Int] {
			
		let values = inorderDFS(root)
		
		var dict: [Int: Int] = [:]
		
		var answer: [Int] = []
		
		for value in values {
			dict[value, default: 0] += 1
		}
		
		// how to find max of the dict?
		let maxValue = dict.values.max()
		
		for element in dict {
			if element.value == maxValue {
				answer.append(element.key)
			}
		}
		return answer
		}
	
	func inorderDFS(_ root: TreeNode?) -> [Int] {
		
		guard let root = root else { return [] }
		
		return inorderDFS(root.left) + [root.val] + inorderDFS(root.right)
	}
