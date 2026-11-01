//
//  1123. Lowest Common Ancestor of Deepest Leaves.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 31.10.2026.
//

import Foundation

// MARK: Problem Name: 1123. Lowest Common Ancestor of Deepest Leaves

// MARK: Stats: 30.10.26 - 31.10.26 1h15min

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
	
	func lcaDeepestLeaves(_ root: TreeNode?) -> TreeNode? {
		
		guard let root = root else { return nil }
		
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
				// it's a leaf -> add to Paths array
				paths.append(path)
			}
		}
		
		// Place for filtering and query of the path size and LCA
		
		// if there is a single path (leaf) -> return it's deepst node
		if paths.count == 1 {
			return paths[0].last
		}
		
		// like [3, 4, 5] and so on
		var depth: [Int] = []
		
		for path in paths {
			depth.append(path.count)
		}
		
		let height = depth.max() ?? 0
		
		let sortedPaths = paths.filter { $0.count == height }
		let deepestLeafs = sortedPaths.count
		
		// now i have only deepst leafs
		
		outerLoop: for nodeIndex in (0..<height).reversed() {
			
			var nodes: [TreeNode] = []
			
			for path in sortedPaths {
				nodes.append(path[nodeIndex])
			}
			
			let lca = nodes[0]
			
			innerLoop: for index in 1..<nodes.count {
				
				if lca.val != nodes[index].val {
					continue outerLoop
				}
			}
			return lca
		}
		return nil
	}
