//
//  1315. Sum of Nodes with Even-Valued Grandparent.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 29.10.2026.
//

import Foundation

// MARK: Problem Name: 1315. Sum of Nodes with Even-Valued Grandparent

// MARK: Stats: 29.10.26 1h

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
	
	func sumEvenGrandparent(_ root: TreeNode?) -> Int {
		
		guard let root = root else { return 0 }
		guard root.val % 2 == 0 else { return sumEvenGrandparent(root.left) + 0 + sumEvenGrandparent(root.right) }
		if root.left == nil && root.right == nil {
			return 0 // base case
		}
		let sumOfGrandchildren = ((root.left?.left?.val ?? 0) + (root.left?.right?.val ?? 0) + (root.right?.left?.val ?? 0) + (root.right?.right?.val ?? 0))
		return sumEvenGrandparent(root.left) + sumOfGrandchildren + sumEvenGrandparent(root.right)
	}
