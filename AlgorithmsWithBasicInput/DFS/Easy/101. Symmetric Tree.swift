//
//  File.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 15.10.2026.
//

import Foundation

// MARK: Problem Name: 101. Symmetric Tree

// MARK: Stats: 12.10.26 - 14.10.26 3h

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
	
	func isSymmetric(_ root: TreeNode?) -> Bool {
		
		guard let root = root else { return false }
		return areTwoTreesIdentical(root.left, root.right)
	}
	
	func areTwoTreesIdentical(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
		
		if left == nil && right != nil { return false }
		if left != nil && right == nil { return false }
		
		guard let root1 = left, let root2 = right else { return true }
		
		var stack1: [TreeNode] = [root1]
		var stack2: [TreeNode] = [root2]
		
		while !stack1.isEmpty && !stack2.isEmpty {
			
			let node1 = stack1.removeLast()
			let node2 = stack2.removeLast()
			
			if node1.val != node2.val { return false }
			
			// Add right node of the left tree and left node of the right tree to stack to follow traversal order
			
			let rightNode1 = node1.right
			let leftNode2 = node2.left
			
			if rightNode1 == nil && leftNode2 != nil { return false }
			if rightNode1 != nil && leftNode2 == nil { return false }
			
			if rightNode1 != nil { stack1.append(rightNode1!) }
			if leftNode2 != nil { stack2.append(leftNode2!) }
			
			// --------
			
			let leftNode1 = node1.left
			let rightNode2 = node2.right
			
			if leftNode1 == nil && rightNode2 != nil { return false }
			if leftNode1 != nil && rightNode2 == nil { return false }
			
			if leftNode1 != nil { stack1.append(leftNode1!) }
			if rightNode2 != nil { stack2.append(rightNode2!) }
			
		}
		return true
	}
