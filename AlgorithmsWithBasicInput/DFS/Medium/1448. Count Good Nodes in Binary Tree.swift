//
//  1448. Count Good Nodes in Binary Tree.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 08.11.2026.
//

import Foundation

// MARK: Problem Name: 1448. Count Good Nodes in Binary Tree

// MARK: Stats: 08.11.26 40min

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
	
	// Way to optimise: remove array.max() at each iteration and just keep track on max values
	
	func goodNodes(_ root: TreeNode?) -> Int {
		
		guard let root = root else { return 0 }
		
		var counter = 1 // because we already have root (which is good by default)
		
		var queue: [(TreeNode, [Int])] = [(root, [root.val])]
		
		while !queue.isEmpty {
			
			let (node, path) = queue.removeFirst()
			
			if let leftNode = node.left {
				
				let newPath = path + [leftNode.val]
				
				if leftNode.val >= newPath.max() ?? 0 {
					counter += 1
				}
				
				queue.append((leftNode, newPath))
			}
			
			if let rightNode = node.right {
				
				let newPath = path + [rightNode.val]
				
				if rightNode.val >= newPath.max() ?? 0 {
					counter += 1
				}
				
				queue.append((rightNode, newPath))
			}
		}
		return counter
	}
