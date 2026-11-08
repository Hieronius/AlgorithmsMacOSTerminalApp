//
//  1325. Delete Leaves With a Given Value.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 07.11.2026.
//

import Foundation

// MARK: Problem Name: 1325. Delete Leaves With a Given Value

// MARK: Stats: 06.11.26 - 07.11.26 45m

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
	
	func removeLeafNodes(_ root: TreeNode?, _ target: Int) -> TreeNode? {
		
		guard let root = root else { return nil }
		
		var leafs: [[TreeNode?]] = []
		var queue: [(TreeNode, [TreeNode])] = [(root, [root])]
		
		while !queue.isEmpty {
			
			let (node, path) = queue.removeFirst()
			
			if let leftNode = node.left {
				
				queue.append((leftNode, path + [leftNode]))
			}
			
			if let rightNode = node.right {
				
				queue.append((rightNode, path + [rightNode]))
			}
			
			if node.left == nil && node.right == nil {
				
				// it's a leaf
				leafs.append(path)
			}
		}
		
		// Iterate each leaf
		
		for leafIndex in 0..<leafs.count {
			
			// Move from the end of the leaf
			
			for index in leafs[leafIndex].indices.reversed() {
				
				guard let node = leafs[leafIndex][index] else { continue }
				
				// clear indication that is a leaf
				// may be too redandant for actual leaf but allows to avoid an extra rule set for last and previous leaf after deletion
				
				if node.val == target &&
					node.left == nil &&
					node.right == nil {
					
					// Because our TreeNode is a reference data type we can assign it to nil so all links to this object also become nil
//					if root === node { return nil }
					
					
					leafs[leafIndex][index] === nil
					
					// This is our main concern
					// We should repeat checking each leaf node after deletion until it root
					// If root is actually a leaf with requirements met we also should set it to nil
					// in this case or we go out of bounds or we start at index 0
					// which means we won't touch root
					
					if (index - 1) >= 0 {
						
						let parentNode = leafs[leafIndex][index - 1]
						
						if parentNode?.left === node {
							parentNode?.left = nil
						}
						
						if parentNode?.right === node {
							parentNode?.right = nil
						}
					}
					
				}
			}
		}
		return leafs[0][0]
	}
