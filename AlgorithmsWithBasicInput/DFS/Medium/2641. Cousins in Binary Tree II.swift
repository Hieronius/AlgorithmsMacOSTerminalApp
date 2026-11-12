//
//  2641. Cousins in Binary Tree II.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 08.11.2026.
//

import Foundation

// go back in 1 of december

// MARK: Problem Name: 2641. Cousins in Binary Tree II

// MARK: Stats: 07.11.26 - 09.11.26 2h

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
	
	func replaceValueInTree(_ root: TreeNode?) -> TreeNode? {
		
	}
