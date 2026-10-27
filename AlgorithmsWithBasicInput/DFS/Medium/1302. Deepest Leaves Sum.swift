//
//  1302. Deepest Leaves Sum.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 26.10.2026.
//

import Foundation

// MARK: Problem Name: 1302. Deepest Leaves Sum

// MARK: Stats: 26.10.26 30 min

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
	
	func deepestLeavesSum(_ root: TreeNode?) -> Int {
		
		guard let root = root else { return 0 }
		
		var sum = 0
		var queue: [TreeNode?] = [root, nil]
		
		while !queue.isEmpty {
			
			guard let node = queue.removeFirst() else {
				
				if !queue.isEmpty {
					queue.append(nil)
					sum = 0
					continue
				} else {
					return sum
				}
			}
			
			if let leftNode = node.left { queue.append(leftNode) }
			if let rightNode = node.right { queue.append(rightNode) }
			
			sum += node.val
		}
		return sum
	}
