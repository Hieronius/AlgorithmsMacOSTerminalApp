//
//  865. Smallest Subtree with all the Deepest Nodes.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 01.11.2026.
//

import Foundation

// MARK: Problem Name: 865. Smallest Subtree with all the Deepest Nodes

// MARK: Stats: 01.11.26 30 min

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
	
	func subtreeWithAllDeepest(_ root: TreeNode?) -> TreeNode? {
		
		let paths = levelOrderDFS(root)
		
		// if there is a single path (leaf) -> return it's deepst node
		if paths.count == 1 {
			return paths[0].last
		}
		
		let maxDepth = paths.map { $0.count }.max() ?? 0
		
		let dippestPaths = paths.filter { $0.count == maxDepth }
		
		outerLoop: for index in (0..<maxDepth).reversed() {
			
			let cla = dippestPaths[0][index]
			
			innerLoop: for path in dippestPaths {
				
				if path[index].val != cla.val {
					continue outerLoop
				}
			}
			return cla
		}
		return nil
	}
	
	func levelOrderDFS(_ root: TreeNode?) -> [[TreeNode]] {
		
		guard let root = root else { return [[]] }
		
		var paths: [[TreeNode]] = []
		
		var queue: [(TreeNode, [TreeNode])] = [(root, [root])]
		
		while !queue.isEmpty {
			
			let (node, path) = queue.removeFirst()
			
			if let leftNode = node.left {
				
				let newPath = path + [leftNode]
				queue.append((leftNode, newPath))
			}
			
			if let rightNode = node.right {
				
				let newPath = path + [rightNode]
				queue.append((rightNode, newPath))
			}
			
			if node.left == nil && node.right == nil {
				
				paths.append(path)
			}
		}
		return paths
	}
