//
//  814. Binary Tree Pruning.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 12.11.2026.
//

import Foundation

// MARK: Problem Name: 814. Binary Tree Pruning

// MARK: Stats: 09.11.26 - 12.11.26 45min + 45min + 30min

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
	
	func pruneTree(_ root: TreeNode?) -> TreeNode? {
		
		guard let root = root else { return nil }
		
		root.left = pruneTree(root.left)
		root.right = pruneTree(root.right)
		
		if root.val == 0 && root.left == nil && root.right == nil {
			return nil // only by this way you mark existing node in the tree as nil
			// you can't set root = nil to delete it.
		}
		
		return root
	}
