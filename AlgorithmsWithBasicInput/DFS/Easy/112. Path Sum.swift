//
//  112. Path Sum.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 21.10.2026.
//

import Foundation

// MARK: Problem Name: 112. Path Sum

// MARK: Stats: 21.10.26 30 min

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
	
	func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
			
		guard let root = root else { return false }
		
		var paths: [Int] = []
		var stack: [(TreeNode, Int)] = [(root, root.val)]
		
		while !stack.isEmpty {
			
			let (node, path) = stack.removeLast()
			
			if let rightNode = node.right {
				let newPath = path + rightNode.val
				stack.append((rightNode, newPath))
			}
			
			if let leftNode = node.left {
				let newPath = path + leftNode.val
				stack.append((leftNode, newPath))
			}
			
			if node.left == nil && node.right == nil {
				paths.append(path)
			}
		}
		return paths.contains(targetSum)
		}
