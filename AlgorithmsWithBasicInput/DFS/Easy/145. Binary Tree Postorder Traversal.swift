//
//  145. Binary Tree Postorder Traversal.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 28.08.2026.
//

import Foundation

// MARK: Problem Name: 145. Binary Tree Postorder Traversal

// MARK: Stats: 28.08.26 1h

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

class Solution {
	
	func postorderTraversal(_ root: TreeNode?) -> [Int] {
		
		guard let root = root else { return [] }
		
		var result: [Int] = []
		var stack: [TreeNode] = [root]
		
		while !stack.isEmpty {
			
			let node = stack.removeLast()
			result.append(node.val)
			
			if let leftNode = node.left { stack.append(leftNode) }
			if let rightNode = node.right { stack.append(rightNode) }
		}
		return result.reversed()
	}
}
