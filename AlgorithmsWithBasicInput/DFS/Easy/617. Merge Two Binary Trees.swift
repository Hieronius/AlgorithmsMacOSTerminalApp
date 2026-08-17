//
//  617. Merge Two Binary Trees.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 16.08.2026.
//

import Foundation

// MARK: Problem Name: 617. Merge Two Binary Trees

// MARK: Stats: 14.08.26 - 16.08.26 2h

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
	
	// MARK: TRY TO SOLVE BY RECURSION BUT YOURSELF FIRST. THERE IS 50% INTUITION
	
	func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
		
		guard let root1 = root1 else { return root2 }
		guard let root2 = root2 else { return root1 }
		
		var stack: [(TreeNode?, TreeNode?)] = [(root1, root2)]
		
		while !stack.isEmpty {
			
			let nodesPair = stack.removeLast()
			
			guard let node1 = nodesPair.0 else { continue }
			guard let node2 = nodesPair.1 else { continue }
			
			node1.val += node2.val
			
			// force unwrap because we sure there is node1 and node2 left nodes
			
			if node1.left == nil {
				node1.left = node2.left
			} else {
				stack.append((node1.left, node2.left))
			}
			
			if node1.right == nil {
				node1.right = node2.right
			} else {
				stack.append((node1.right, node2.right))
			}
			
		}
		return root1
	}
}
