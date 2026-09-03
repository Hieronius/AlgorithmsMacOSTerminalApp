//
//  104. Maximum Depth of Binary Tree.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 02.09.2026.
//

import Foundation

// MARK: Problem Name: 104. Maximum Depth of Binary Tree

// MARK: Stats: 29.08.26 - 02.09.26 2h

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
	
	func maxDepth(_ root: TreeNode?) -> Int {
		
		guard let root = root else { return 0 }
		return 1 + max(maxDepth(root.left), maxDepth(root.right))
	}
}
