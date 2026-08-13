//
//  94. Binary Tree Inorder Traversal.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 12.08.2026.
//

import Foundation

// MARK: Problem Name: 94. Binary Tree Inorder Traversal

// MARK: Stats: 09.08.26 - 12.08.26 2h

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
}

class Node {
	var val: Int
	var children: [Node]
	init(_ val: Int) {
		self.val = val
		self.children = []
	}
}

class Solution {
	
	// MARK: THIS CODE WORKS. USE YOUR TREE AND PAPER TO GO STEP BY STEP AND UNDERSTAND IT
	
	func inorderTraversal(_ root: TreeNode?) -> [Int] {
		var result: [Int] = []
		var stack: [TreeNode] = []
		var current = root
		
		while current != nil || !stack.isEmpty {
			// 1. Go left as far as possible, pushing every node
			while let node = current {
				stack.append(node)
				current = node.left
			}
			
			// 2. Can't go left anymore - pop and visit
			current = stack.removeLast()
			result.append(current!.val)
			
			// 3. Go right once
			current = current?.right
		}
		
		return result
	}
}
