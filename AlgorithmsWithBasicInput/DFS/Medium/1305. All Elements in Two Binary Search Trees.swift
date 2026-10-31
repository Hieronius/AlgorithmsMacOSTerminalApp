//
//  1305. All Elements in Two Binary Search Trees.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 30.10.2026.
//

import Foundation

// MARK: Problem Name: 1305. All Elements in Two Binary Search Trees

// MARK: Stats: 30.10.26 5 min

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
	
	func getAllElements(_ root1: TreeNode?, _ root2: TreeNode?) -> [Int] {
		
		return (dfs(root1) + dfs(root2)).sorted()
	}
	
	func dfs(_ root: TreeNode?) -> [Int] {
		
		guard let root = root else { return [] }
		
		return [root.val] + dfs(root.left) + dfs(root.right)
	}
