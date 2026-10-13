//
//  404. Sum of Left Leaves.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 12.10.2026.
//

import Foundation

// MARK: Problem Name: 404. Sum of Left Leaves

// MARK: Stats: 11.10.26 - 12.10.26 1.5h

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
	
	// MARK: - Think about recursion but mark what node it was left or right by making array of tuples (node.val, bool (left/right))
	
	func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
		
		guard let root = root else { return 0 }
		if root.left == nil && root.right == nil { return 0 }
		
		var answer = 0
		var isLeftNode: Bool
		
		if root.left != nil {
			isLeftNode = true
		} else {
			isLeftNode = false
		}
		
		var stack: [(TreeNode, Bool)] = [(root, isLeftNode)]
		
		while !stack.isEmpty {
			
			let (root, isLeftNode) = stack.removeLast()
			
			if root.left == nil && root.right == nil && isLeftNode == true {
				answer += root.val
			}
			
			if let rightNode = root.right {
				stack.append((rightNode, false))
			}
			
			if let leftNode = root.left {
				stack.append((leftNode, true))
			}
		}
		return answer
	}
