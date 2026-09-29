//
//  637. Average of Levels in Binary Tree.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 27.09.2026.
//

import Foundation

// MARK: Problem Name: 637. Average of Levels in Binary Tree

// MARK: Stats: 26.09.26 - 27.09.26 30m

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
	
	func averageOfLevels(_ root: TreeNode?) -> [Double] {
		
		guard let root = root else { return [] }
		
		var answer: [Double] = []
		
		// How many nodes at each level
		var nodesCounter: Double = 0.0
		
		/// Accumulate property of all level nodes values
		var valueSum: Double = 0.0
		// to traverse by level we should add a filler nil after first root node
		// and add extra nil filler after each next level to differenciate
		var queue: [TreeNode?] = [root, nil]
		
		while !queue.isEmpty {
			
			guard let node = queue.removeFirst() else {
				
				let averageValue = valueSum / nodesCounter
				answer.append(averageValue)
				nodesCounter = 0.0
				valueSum = 0.0
				
				// this line mean that we did encounter the last node of the previous level (nil) so we should add another nil if there are still real nodes level below
				if !queue.isEmpty {
					queue.append(nil)
				}
				continue
			}
			
			nodesCounter += 1.0
			valueSum += Double(node.val)
			
			if let leftNode = node.left { queue.append(node.left) }
			if let rightNode = node.right { queue.append(node.right) }
			
		}
		return answer
	}
}
