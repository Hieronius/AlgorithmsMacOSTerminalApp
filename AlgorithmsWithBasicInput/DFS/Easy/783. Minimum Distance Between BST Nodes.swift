//
//  783. Minimum Distance Between BST Nodes.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 15.10.2026.
//

import Foundation

// MARK: Problem Name: 783. Minimum Distance Between BST Nodes

// MARK: Stats: 15.10.26 10 min, first attempt

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
	
	func minDiffInBST(_ root: TreeNode?) -> Int {
		
		let nodes = inorderDFS(root)
		
		guard !nodes.isEmpty else { return 0 }
		guard nodes.count > 2 else { return nodes[1] - nodes[0] }
		
		var answer = nodes[1] - nodes[0]
		
		var left = 1
		var right = 2
		
		while right < nodes.count {
			
			let diff = nodes[right] - nodes[left]
			answer = min(answer, diff)
			left += 1
			right += 1
		}
		return answer
	}
	
	func inorderDFS(_ root: TreeNode?) -> [Int] {
		
		guard let root = root else { return [] }
		
		return inorderDFS(root.left) + [root.val] + inorderDFS(root.right)
	}
