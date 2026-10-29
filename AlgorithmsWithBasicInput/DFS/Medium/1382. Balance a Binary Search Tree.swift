//
//  1382. Balance a Binary Search Tree.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 28.10.2026.
//

import Foundation

// MARK: Problem Name: 1382. Balance a Binary Search Tree

// MARK: Stats: 26.10.26 - 28.10.26 2h

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
	
	// MARK: disect this test case: [1,null,15,14,17,7,null,null,null,2,12,null,3,9,null,null,null,null,11]
	
	// my output: [11,9,12,7,null,null,14,3,null,null,15,2,null,null,17,1]
	// correct output: [9,2,14,1,3,11,15,null,null,null,7,null,12,null,17]
	
	// MARK: I should fill a new tree by level order or something like that because the way i consruct the tree is height balanced but not for every node subtrees. Construct the tree from hand again and analyse.
	
	func balanceBST(_ root: TreeNode?) -> TreeNode? {
		
		guard let root = root else { return nil }
		
		let values = inorderDFS(root)
		
		return buildBalancedTree(values, 0, values.count - 1)
	}
	
	func inorderDFS(_ root: TreeNode?) -> [Int] {
		
		guard let root = root else { return [] }
		
		return inorderDFS(root.left) + [root.val] + inorderDFS(root.right)
	}
	
	// MARK: - Build Balanced Tree By Recursion
	
	func buildBalancedTree(_ nodes: [Int], _ start: Int, _ end: Int) -> TreeNode? {
		
		guard start <= end else { return nil }
		
		let mid = (start + end) / 2
		let rootValue = nodes[mid]
		let root = TreeNode(rootValue)
		
		root.left = buildBalancedTree(nodes, start, mid - 1)
		root.right = buildBalancedTree(nodes, mid + 1, end)
		
		return root
	}
