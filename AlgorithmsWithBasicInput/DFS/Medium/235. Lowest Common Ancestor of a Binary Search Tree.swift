//
//  235. Lowest Common Ancestor of a Binary Search Tree.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 24.11.2026.
//

import Foundation

// MARK: Problem Name: 235. Lowest Common Ancestor of a Binary Search Tree
// MARK: Stats: 24.11.26 1h

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
	
	func lowestCommonAncestor(_ root: TreeNode?,
							  _ p: TreeNode?,
							  _ q: TreeNode?) -> TreeNode? {
		
		guard let root = root else { return nil }
		
		if (root === p || root === q) { return root }
		
		let left = lowestCommonAncestor(root.left, p, q)
		let right = lowestCommonAncestor(root.right, p, q)
		
		if (left != nil && right != nil) {
			return root
		} else {
			return left != nil ? left : right
		}
	}
