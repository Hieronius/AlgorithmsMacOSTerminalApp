//
//  257. Binary Tree Paths.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 30.09.2026.
//

import Foundation

// MARK: Problem Name: 257. Binary Tree Paths

// MARK: Stats: 30.09.26 - 30 min

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
	
	func binaryTreePaths(_ root: TreeNode?) -> [String] {
		
		guard let root = root else { return [] }
		
		var answer: [String] = []
		
		var stack: [(TreeNode, String)] = [(root, "\(root.val)")]
		
		while !stack.isEmpty {
			
			let poppedValue = stack.removeLast()
			let node = poppedValue.0
			let path = poppedValue.1
			
			if node.left == nil && node.right == nil {
				answer.append(path)
			}
			
			if let rightNode = node.right {
				let newPath = "\(path)->\(rightNode.val)"
				stack.append((rightNode, newPath))
			}
			
			if let leftNode = node.left {
				let newPath = "\(path)->\(leftNode.val)"
				stack.append((leftNode, newPath))
			}
		}
		return answer
	}
}
