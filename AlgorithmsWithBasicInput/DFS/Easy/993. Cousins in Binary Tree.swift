//
//  993. Cousins in Binary Tree.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 16.10.2026.
//

import Foundation

// MARK: Problem Name: 993. Cousins in Binary Tree

// MARK: Stats: 15.10.26 - 16.10.26 2h

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
	
	func isCousins(_ root: TreeNode?, _ x: Int, _ y: Int) -> Bool {
		
		guard let root = root else { return false }
		
		var levels = 0
		
		var wasXFound = false
		var wasYFound = false
		var xLevel = -1
		var yLevel = -2
		var xParent = -3
		var yParent = -3
		
		func areNodesCousins() -> Bool {
			
			if (wasXFound && wasYFound) &&
				(xLevel == yLevel) &&
				(xParent != yParent) {
				return true
			} else {
				return false
			}
		}
		
		var queue: [TreeNode?] = [root, nil]
		
		while !queue.isEmpty {
			
			guard let node = queue.removeFirst() else {
				levels += 1
				if !queue.isEmpty {
					queue.append(nil)
				}
				continue
			}
			
			if let leftNode = node.left {
				
				if leftNode.val == x {
					xParent = node.val
					xLevel = levels + 1
					wasXFound = true
					
				} else if leftNode.val == y {
					yParent = node.val
					yLevel = levels + 1
					wasYFound = true
				}
				queue.append(leftNode)
			}
			
			if let rightNode = node.right {
				
				if rightNode.val == x {
					xParent = node.val
					xLevel = levels + 1
					wasXFound = true
					
				} else if rightNode.val == y {
					yParent = node.val
					yLevel = levels + 1
					wasYFound = true
				}
				
				queue.append(rightNode)
			}
			
			if areNodesCousins() { return true }
		}
		return false
	}
