//
//  872. Leaf-Similar Trees.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 02.10.2026.
//

import Foundation

// MARK: Problem Name: 872. Leaf-Similar Trees

// MARK: Stats: 02.10.26

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

func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
	
	let leafs1 = findPathsFromRootToLeafsByIteration(root1)
	let leafs2 = findPathsFromRootToLeafsByIteration(root2)
	
	var sequence1: [Int] = []
	var sequence2: [Int] = []
	
	for path in leafs1 {
		guard let leaf = path.last else { continue }
		sequence1.append(leaf)
	}
	
	for path in leafs2 {
		guard let leaf = path.last else { continue }
		sequence2.append(leaf)
	}
	
	return sequence1 == sequence2
}
	
	
	// MARK: - Binary Trees
	
	
	
	// MARK: - Find Paths from Root to Leafs By Iteration
	
	func findPathsFromRootToLeafsByIteration(_ root: TreeNode?) -> [[Int]] {
		
		guard let root = root else { return [[]] }
		
		/// Each array of this property is an actual path from root to it's leaf
		var answer: [[Int]] = []
		
		/// We store not only a node but it's actual path by adding the value and storing it in array
		var stack: [(TreeNode, [Int])] = [(root, [root.val])]
		
		while !stack.isEmpty {
			
			let poppedValue = stack.removeLast()
			let node = poppedValue.0
			let path = poppedValue.1
			
			// if both left and right are NULL it's a leaf
			// get it's path
			if node.left == nil && node.right == nil {
				answer.append(path)
			}
			
			// If there is a node, start from processing right so we will pop left nodes from the stack first (think about preorder mechanic)
			
			if let rightNode = node.right {
				// increment the path by another node value
				let rightPath = path + [rightNode.val]
				stack.append((rightNode, rightPath))
			}
			
			if let leftNode = node.left {
				// increment the path by another node value
				let leftPath = path + [leftNode.val]
				stack.append((leftNode, leftPath))
			}
		}
		return answer
	}
