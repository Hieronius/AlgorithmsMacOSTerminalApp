//
//  653. Two Sum IV - Input is a BST.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 11.10.2026.
//

import Foundation

// MARK: Problem Name: 653. Two Sum IV - Input is a BST

// MARK: Stats: 10.10.26 - 11.10.26 1h

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
	
	// MARK: Shifting indices should be more sofisticated because we miss a few combinations. Be sure you get all combinations from the array
	
	func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
		
		guard let root = root else { return false }
		
		let nodes = inorderByRecursion(root)
		
		var left = 0
		var right = left + 1
		
		while left < nodes.count - 1 {
			
			while right < nodes.count {
				
				if nodes[left] + nodes[right] == k {
					return true
				} else {
					right += 1
				}
			}
			left += 1
			right = left + 1
		}
		return false
	}
	
	func inorderByRecursion(_ root: TreeNode?) -> [Int] {
		
		guard let root = root else { return [] }
		
		return inorderByRecursion(root.left) + [root.val] + inorderByRecursion(root.right)
	}
