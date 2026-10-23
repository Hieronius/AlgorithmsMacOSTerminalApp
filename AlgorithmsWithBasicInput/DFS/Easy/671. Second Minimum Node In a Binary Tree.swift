//
//  671. Second Minimum Node In a Binary Tree.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 22.10.2026.
//

import Foundation

// MARK: Problem Name: 671. Second Minimum Node In a Binary Tree

// MARK: Stats: 22.10.26 12min

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
	
	func findSecondMinimumValue(_ root: TreeNode?) -> Int {
		
		let nodes = Array(Set(preorderDFS(root))).sorted()
		
		if nodes.count < 2 { return -1 }
		
		if nodes[0] != nodes[1] {
			return nodes[1]
		} else {
			return -1
		}
	}
	
	func preorderDFS(_ root: TreeNode?) -> [Int] {
		
		guard let root = root else { return [] }
		
		return [root.val] + preorderDFS(root.left) + preorderDFS(root.right)
	}
