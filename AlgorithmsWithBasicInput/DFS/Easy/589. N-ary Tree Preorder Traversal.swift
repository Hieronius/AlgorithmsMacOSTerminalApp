//
//  589. N-ary Tree Preorder Traversal.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 03.09.2026.
//

import Foundation

// MARK: Problem Name: 589. N-ary Tree Preorder Traversal

// MARK: Stats: 03.09.26 30m

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
	
	func preorder(_ root: Node?) -> [Int] {
		
		guard let root = root else { return [] }
		var answer: [Int] = []
		var stack: [Node] = []
		
		while !stack.isEmpty {
			
			let node = stack.removeLast()
			answer.append(node.val)
			
			// we use reversed because we need right children to be at the bottom of the stack
			for child in node.children.reversed() {
				
				stack.append(child)
			}
		}
		return answer
	}
}
