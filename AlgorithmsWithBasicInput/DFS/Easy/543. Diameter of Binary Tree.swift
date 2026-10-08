//
//  543. Diameter of Binary Tree.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 02.10.2026.
//

import Foundation

// MARK: Problem Name: 543. Diameter of Binary Tree

// MARK: Stats: 01.10.26 30 min

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
	
	// MARK: Try to disect it on the morning of 02.10.26
	// If you add + 1 to return condition it will fail
	// Probably because in the book and leetcode we have different definition of the height/diameter
	func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
			
		guard let root = root else { return 0 }
		
		let leftHeight = maxDepthByRecursion(root.left)
		let rightHeight = maxDepthByRecursion(root.right)
		
		let leftDiameter = diameterOfBinaryTree(root.left)
		let rightDiameter = diameterOfBinaryTree(root.right)
		
		return max(leftHeight + rightHeight, max(leftDiameter, rightDiameter))
		}
