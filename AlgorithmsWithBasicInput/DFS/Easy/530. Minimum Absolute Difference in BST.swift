//
//  530. Minimum Absolute Difference in BST.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 16.10.2026.
//

import Foundation

// MARK: Problem Name: 530. Minimum Absolute Difference in BST

// MARK: Stats: 16.10.26 15 min

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
	
	func getMinimumDifference(_ root: TreeNode?) -> Int {
		
		let nodes = inorderDFS(root)
		var minDif = Int.max
		
		var left = 0
		var right = 1
		
		while right < nodes.count {
			
			let dif = nodes[right] - nodes[left]
			minDif = min(minDif, dif)
			
			left += 1
			right += 1
		}
		return minDif
	}
	
	func inorderDFS(_ root: TreeNode?) -> [Int] {
		
		var answer: [Int] = []
		var stack: [TreeNode] = []
		var current = root
		
		while !stack.isEmpty || current != nil {
			
			while let node = current {
				
				stack.append(node)
				current = node.left
			}
			
			let node = stack.removeLast()
			answer.append(node.val)
			current = node.right
		}
		return answer
	}
