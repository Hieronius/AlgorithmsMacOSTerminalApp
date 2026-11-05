//
//  1026. Maximum Difference Between Node and Ancestor.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 01.11.2026.
//

import Foundation

// MARK: Problem Name: 1026. Maximum Difference Between Node and Ancestor

// MARK: Stats: 31.10.26 - 01.11.26 1h15min

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
	
	// MARK: Solution:
	/*
	 1. Find all leafs with LevelOrder traversal
	 2. Traverse all leafs and find it's max and min value
	 3. Find it's dif value
	 4. Find the biggest dif value with formula maxDif = max(maxDif, dif)
	 */
	
	func maxAncestorDiff(_ root: TreeNode?) -> Int {
		
		let paths = levelOrderDFS(root)
		
		var maxDif = 0
		
		for path in paths {
			
			let minValue = path.min() ?? 0
			let maxValue = path.max() ?? 0
			let dif = abs(minValue - maxValue)
			maxDif = max(maxDif, dif)
		}
		return maxDif
	}
	
	func levelOrderDFS(_ root: TreeNode?) -> [[Int]] {
		
		guard let root = root else { return [[]] }
		
		var paths: [[Int]] = []
		var queue: [(TreeNode, [Int])] = [(root, [root.val])]
		
		while !queue.isEmpty {
			
			let (node, path) = queue.removeFirst()
			
			if let leftNode = node.left {
				
				let newPath = path + [leftNode.val]
				queue.append((leftNode, newPath))
			}
			
			if let rightNode = node.right {
				
				let newPath = path + [rightNode.val]
				queue.append((rightNode, newPath))
			}
			
			if node.left == nil && node.right == nil {
				// it's a leaf, cut it down
				paths.append(path)
			}
		}
		return paths
	}
