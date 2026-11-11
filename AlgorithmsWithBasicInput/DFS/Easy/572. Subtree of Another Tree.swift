//
//  572. Subtree of Another Tree.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 22.10.2026.
//

import Foundation

// MARK: Problem Name: 572. Subtree of Another Tree

// MARK: Stats: 21.10.26 - 22.10.26 1h

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
	
	// MARK: The approach is fine but i should find the way to distinguish string parts like "12" and "2" because 2 is part of 12 it's throws a wrong answer

	func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
		
		if (root?.left == nil && root?.right == nil) && (subRoot?.left == nil && subRoot?.right == nil) {
			return root?.val == subRoot?.val
		}
			
		let mainString = stringSerialisationDFS(root)
		let subString = stringSerialisationDFS(subRoot)
		
		return mainString.contains(subString)
		
		}
	
	func stringSerialisationDFS(_ root: TreeNode?) -> String {
		
		// # - char is for defining nils in tree structure
		guard let root = root else { return "#," }
		
		var answer: String = ""
		var stack: [TreeNode?] = [root]
		
		while !stack.isEmpty {
			
			guard let node = stack.removeLast() else {
				answer += "#,"
				continue
			}
			answer += "\(node.val)"
			answer += ","
			
			if let rightNode = node.right {
				stack.append(rightNode)
			} else {
				stack.append(nil)
			}
			
			if let leftNode = node.left {
				stack.append(leftNode)
			} else {
				stack.append(nil)
			}
		}
		return answer
	}
