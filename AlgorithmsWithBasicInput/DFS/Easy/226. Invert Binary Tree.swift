//
//  226. Invert Binary Tree.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 14.08.2026.
//

import Foundation

// MARK: Problem Name: 226. Invert Binary Tree

// MARK: Stats: 12.08.26  - 14.08.26 2h-

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
	
	// MARK: YOU DID IT BY RECURSION. NOW DO IT BY QUEUE AND ITERATION
	
	func invertTree(_ root: TreeNode?) -> TreeNode? {
		
		guard let root = root else { return nil }
		
		var queue: [TreeNode] = [root]
		
		while !queue.isEmpty {
			
			let node = queue.removeFirst()
			let temp = node.left
			node.left = node.right
			node.right = temp
			
			if let leftNode = node.left {
				queue.append(leftNode)
			}
			if let rightNode = node.right {
				queue.append(rightNode)
			}
		}
		return root
	}
}
