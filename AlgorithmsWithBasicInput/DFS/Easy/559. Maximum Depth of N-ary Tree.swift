//
//  559. Maximum Depth of N-ary Tree.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 29.09.2026.
//

import Foundation

// MARK: Problem Name: 559. Maximum Depth of N-ary Tree

// MARK: Stats: 30.09.26 - 1h

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

class Solution {
	
	func maxDepth(_ root: Node?) -> Int {
		
		guard let root = root else { return 0 }
		
		var levels = 0
		
		var queue: [Node?] = [root, nil]
		
		while !queue.isEmpty {
			
			guard let node = queue.removeFirst() else {
				
				levels += 1
				
				if !queue.isEmpty {
					queue.append(nil)
				}
				continue
			}
			
			for child in node.children {
				queue.append(child)
			}
		}
		return levels
	}
}
