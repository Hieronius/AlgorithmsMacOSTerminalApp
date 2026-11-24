//
//  114. Flatten Binary Tree to Linked List.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 23.11.2026.
//

import Foundation

// MARK: Problem Name: 114. Flatten Binary Tree to Linked List

// MARK: Stats: 23.11.26 1h

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
	
	func flatten(_ root: TreeNode?) {
		
		let nodes = preorderDFS(root)
		
		guard nodes.count > 1 else { return }
		
		var current = root
		var index = 1
		
		while index < nodes.count {
			
			current?.left = nil
			current?.right = nodes[index]
			current = current?.right
			index += 1
		}
		
	}
	
	
	func preorderDFS(_ root: TreeNode?) -> [TreeNode] {
		
		guard let root = root else { return [] }
		
		return [root] + preorderDFS(root.left) + preorderDFS(root.right)
	}
