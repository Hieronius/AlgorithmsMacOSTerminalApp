//
//  144. Binary Tree Preorder Traversal.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 26.09.2026.
//

import Foundation

// MARK: Problem Name: 144. Binary Tree Preorder Traversal

// MARK: Stats: 26.09.26. 5 min

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
	
	func preorderTraversal(_ root: TreeNode?) -> [Int] {
			
		guard let root = root else { return [] }
		
		var answer: [Int] = []
		var stack: [TreeNode] = [root]
		
		while !stack.isEmpty {
			
			let node = stack.removeLast()
			answer.append(node.val)
			
			if let rightNode = node.right { stack.append(rightNode) }
			if let leftNode = node.left { stack.append(leftNode) }
			
		}
		return answer
		}
