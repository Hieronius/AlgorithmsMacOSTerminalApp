//
//  897. Increasing Order Search Tree.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 28.08.2026.
//

import Foundation

// MARK: Problem Name: 897. Increasing Order Search Tree

// MARK: Stats: 16.08.26 - 28.08.26 3h

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

class Node {
	var val: Int
	var children: [Node]
	init(_ val: Int) {
		self.val = val
		self.children = []
	}
}

class Solution {
	
	// MARK: Modify InorderByIteration to replace answer array with new root and add a new current2 to count a new root
	// MARK: Modify code to return the same root by changing values in place
	
	func increasingBST(_ root: TreeNode?) -> TreeNode? {
		
		var current = root
		var stack: [TreeNode] = []
		
		while current != nil || !stack.isEmpty {
			
			while let node = current {
				
				stack.append(node)
				current?.left = nil
				current = node.left
			}
			let node = stack.removeLast()
			current?.right = node
			current = node.right
		}
		return root
	}
}
