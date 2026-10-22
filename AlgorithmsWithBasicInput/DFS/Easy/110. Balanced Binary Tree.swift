//
//  110. Balanced Binary Tree.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 20.10.2026.
//

import Foundation

// MARK: Problem Name: 110. Balanced Binary Tree

// MARK: Stats: 17.10.26 - 19.10.26 2h

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
	
	func isBalanced(_ root: TreeNode?) -> Bool {
		
		guard let root = root else { return true }
		
		let left = height(root.left)
		let right = height(root.right)
		
		guard abs(left - right) <= 1 else { return false }
		
		return isBalanced(root.left) && isBalanced(root.right)
	}
	
	func height(_ root: TreeNode?) -> Int {
		
		guard let root = root else { return 0 }
		
		return 1 + max(height(root.left), height(root.right))
	}
