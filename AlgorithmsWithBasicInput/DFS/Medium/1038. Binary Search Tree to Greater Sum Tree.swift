//
//  1038. Binary Search Tree to Greater Sum Tree.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 25.10.2026.
//

import Foundation

// MARK: Problem Name: 1038. Binary Search Tree to Greater Sum Tree

// MARK: Stats: 24.10.26 - 25.10.26 1h30m

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
	
	func bstToGst(_ root: TreeNode?) -> TreeNode? {
		
		let nodes = inorderDFS(root)
		
		// greater numbers to fill a new tree (or the old one)
		var newValues: [Int] = []
		
		// this property we want to use for sliding window
		// It will be a starting and a smallest point in the tree
		var newValue = 0
		
		// for sliding window we use 0 + 1 index because we already got a smallest value
		var leftIndex = 0
		// right corner of the nodes array to avoid getting out of bounds
		var rightIndex = nodes.count - 1
		
		for index in leftIndex...rightIndex {
			newValue += nodes[index]
		}
		newValues.append(newValue)
		
		// if array.count = 10, rightIndex = 9
		// so until left(0) <= right(9) -> run the loop
		// if total number is 10, we should deduct 1 as a first
		// but in the code below we immediately deduct 2
		while leftIndex <= rightIndex {
			newValue -= nodes[leftIndex] // 1 for first
			newValues.append(newValue)
			leftIndex += 1
		}
		// at this point i have an entire array of new values:
		// [36, 36, 35, 33, 30, 26, 21, 15, 8]
		// so i need to just traverse tree back in inorder and define a new values
		
		var stack: [TreeNode?] = []
		var current = root
		
		// this property we set to 0 again so we can track our nodes
		leftIndex = 0
		
		while !stack.isEmpty || current != nil {
			
			// go left
			while let node = current {
				stack.append(node)
				current = node.left
				
			}
			// go right
			let node = stack.removeLast()
			node?.val = newValues[leftIndex]
			leftIndex += 1
			current = node?.right
		}
		return root
			
		}
	
	// recursion for easy to get node values
	func inorderDFS(_ root: TreeNode?) -> [Int] {
		
		guard let root = root else { return [] }
		
		return inorderDFS(root.left) + [root.val] + inorderDFS(root.right)
	}
