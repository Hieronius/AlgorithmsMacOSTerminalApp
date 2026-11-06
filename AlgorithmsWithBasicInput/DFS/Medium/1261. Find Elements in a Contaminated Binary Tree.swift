//
//  1261. Find Elements in a Contaminated Binary Tree.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 30.10.2026.
//

import Foundation

// MARK: Problem Name: 1261. Find Elements in a Contaminated Binary Tree

// MARK: Stats: 30.10.26 45 min

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
	
	var root: TreeNode?
	var nodes: [Int] = []
	
	// get the tree and modify it in sertain way
	init(_ root: TreeNode?) {
		
		guard let root = root else { return }
		
		root.val = 0
		
		var queue: [TreeNode] = [root]
		
		while !queue.isEmpty {
			
			let node = queue.removeFirst()
			
			if let leftNode = node.left {
				leftNode.val = 2 * node.val + 1
				queue.append(leftNode)
			}
			
			if let rightNode = node.right {
				rightNode.val = 2 * node.val + 2
				queue.append(rightNode)
			}
		}
		self.root = root
		nodes = dfs(root)
	}
	
	func find(_ target: Int) -> Bool {
		
		return self.nodes.contains(target)
		
	}
	
	func dfs(_ root: TreeNode?) -> [Int] {
		
		guard let root = root else { return [] }
		
		return [root.val] + dfs(root.left) + dfs(root.right)
	}
