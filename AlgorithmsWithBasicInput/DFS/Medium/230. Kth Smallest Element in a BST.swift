//
//  230. Kth Smallest Element in a BST.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 02.11.2026.
//

import Foundation

// MARK: Problem Name: 230. Kth Smallest Element in a BST

// MARK: Stats: 02.11.26 5 min

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
	
	func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
		
		return inorderDFS(root)[k - 1]
	}
	
	func inorderDFS(_ root: TreeNode?) -> [Int] {
		
		guard let root = root else { return [] }
		
		return inorderDFS(root.left) + [root.val] + inorderDFS(root.right)
	}
