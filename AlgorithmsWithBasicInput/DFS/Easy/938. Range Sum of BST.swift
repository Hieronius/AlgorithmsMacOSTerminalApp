//
//  938. Range Sum of BST.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 02.08.2026.
//

import Foundation

// MARK: Problem Name: 938. Range Sum of BST

// MARK: Stats: 02.08.26 Time Spent: 30 min

// MARK: CODE HERE

/// Implementation of Binary Tree from Kodeco Algorithm Club
/// `indirect` allows to enum to reference it'self and to allocate it's data in heap

class Solution {
	
	class TreeNode {
		var val: Int
		var left: TreeNode?
		var right: TreeNode?
		
		init() {
			self.val = 0
			self.left = nil
			self.right = nil
		}
		
		init(value: Int) {
			self.val = value
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
	}
	
	func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
		
		guard let root = root else { return 0 }
		
		var accumulator = 0
		
		var stack: [TreeNode] = [root]
		
		while !stack.isEmpty {
			
			let node = stack.removeLast()
			if node.val >= low && node.val <= high {
				accumulator += node.val
			}
			if let right = node.right { stack.append(right) }
			if let left = node.left { stack.append(left) }
		}
		
		return accumulator
	}
}
