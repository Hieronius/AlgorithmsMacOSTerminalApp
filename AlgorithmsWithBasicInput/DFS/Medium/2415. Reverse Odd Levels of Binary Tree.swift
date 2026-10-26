//
//  2415. Reverse Odd Levels of Binary Tree.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 25.10.2026.
//

import Foundation

// MARK: Problem Name: 2415. Reverse Odd Levels of Binary Tree

// MARK: Stats: 25.10.26 30m

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
	
	func reverseOddLevels(_ root: TreeNode?) -> TreeNode? {
		
		var isOddLevel = false
		var queue: [TreeNode?] = [root, nil]
		var levelValues: [Int] = []
		var levelNodes: [TreeNode] = []
		
		while !queue.isEmpty {
			
			guard let node = queue.removeFirst() else {
				
				// flip odd levels and reverse previouse ones
				
				if isOddLevel {
					
					levelValues = levelValues.reversed()
					
					for index in 0..<levelNodes.count {
						levelNodes[index].val = levelValues[index]
					}
					
				} else {
					
					levelValues = []
					levelNodes = []
				}
				
				isOddLevel.toggle()
				
				if !queue.isEmpty {
					queue.append(nil)
				}
				continue
			}
			
			if isOddLevel {
				levelValues.append(node.val)
				levelNodes.append(node)
			}
			
			if let leftNode = node.left { queue.append(leftNode) }
			if let rightNode = node.right { queue.append(rightNode) }
		}
		return root
	}
