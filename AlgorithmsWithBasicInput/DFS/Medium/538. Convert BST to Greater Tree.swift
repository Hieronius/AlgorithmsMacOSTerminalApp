//
//  538. Convert BST to Greater Tree.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 16.11.2026.
//

import Foundation

// MARK: Problem Name: 538. Convert BST to Greater Tree

// MARK: Stats: 16.11.26 1h

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
	
	func convertBST(_ root: TreeNode?) -> TreeNode? {
		
		func recursiveInorderDFS(_ root: TreeNode?) -> [Int] {
			
			guard let root = root else { return [] }
			
			return recursiveInorderDFS(root.left) + [root.val] + recursiveInorderDFS(root.right)
		}
		
		func transformNode(_ node: TreeNode, _ values: [Int]) {
			
			for index in values.indices {
				
				if values[index] == node.val {
					
					let slice = nodes[index..<nodes.count]
					print(values)
					print(slice)
					
					let sum = slice.reduce(0, +)
					node.val = sum
					return
				}
			}
			return
		}
		
		let nodes = recursiveInorderDFS(root)
		print(nodes)
		
		var stack: [TreeNode] = []
		var current = root
		
		while !stack.isEmpty || current != nil {
			
			while let node = current {
				
				stack.append(node)
				transformNode(current!, nodes)
				current = node.left
			}
			
			let node = stack.removeLast()
			current = node.right
		}
		
		return root
	}
