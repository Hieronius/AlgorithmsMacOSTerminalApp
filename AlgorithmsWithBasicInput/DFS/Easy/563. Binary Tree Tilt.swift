//
//  563. Binary Tree Tilt.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 10.10.2026.
//

import Foundation

// MARK: Problem Name: 563. Binary Tree Tilt

// MARK: Stats: 04.10.26 - 10.10.26 5h

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
	
	// We recursively get values of left and right subtries (order is not important
	// After we use post order DFS to calculate all tilts
	// We can avoid time complexity of O(n^2) if we will use a global variable in fintTilt to store results of the tilts
	
	func findTilt(_ root: TreeNode?) -> Int {
		
		guard let root = root else { return 0 }
		
		return findTilt(root.left) + findTilt(root.right) + abs(sumNodesOf(root.left) - sumNodesOf(root.right))
	}
	
	func sumNodesOf(_ root: TreeNode?) -> Int {
		
		guard let root = root else { return 0 }
		
		return root.val + sumNodesOf(root.left) + sumNodesOf(root.right)
	}
