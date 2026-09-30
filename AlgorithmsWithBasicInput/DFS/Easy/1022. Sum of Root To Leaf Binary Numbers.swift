//
//  1022. Sum of Root To Leaf Binary Numbers.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 26.09.2026.
//

import Foundation

// MARK: Problem Name: 1022. Sum of Root To Leaf Binary Numbers

// MARK: Stats: 03.09.26

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
	
	func sumRootToLeaf(_ root: TreeNode?) -> Int {
		
		var sum = 0
		
		let paths = findPathsFromRootToLeafsByIteration(root)
		
		for path in paths {
			let stringPath = path.map { String($0)}.joined()
			guard let num = Int(stringPath, radix: 2) else {
				continue
			}
			sum += num
		}
		return sum
	}
	
	// MARK: - Find Paths from Root to Leafs By Iteration
	
	/// Problem 20 from the book
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
