//
//  100. Same Tree.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 01.10.2026.
//

import Foundation

// MARK: Problem Name: 100. Same Tree

// MARK: Stats: 01.10.26 1h

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


func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
	
	if p == nil && q == nil {
		return true
	}
	
	if p == nil || q == nil {
		return false
	}
	
	guard let root1 = p else { return false }
	guard let root2 = q else { return false }
	
	var stack: [(TreeNode, TreeNode)] = [(root1, root2)]
	
	while !stack.isEmpty {
		
		let poppedValue = stack.removeLast()
		let node1 = poppedValue.0
		let node2 = poppedValue.1
		
		if node1.val != node2.val { return false }
		
		let leftNode1 = node1.left
		let leftNode2 = node2.left
		
		// so what if there will be 2 nils?
		
		if leftNode1 == nil && leftNode2 != nil {
			return false
		} else if leftNode1 != nil && leftNode2 == nil {
			return false
		}
		
		if (leftNode1 != nil && leftNode2 != nil) {
			
			if leftNode1?.val != leftNode2?.val { return false }
			
			stack.append((leftNode1!, leftNode2!))
			
		}
		
		let rightNode1 = node1.right
		let rightNode2 = node2.right
		
		if rightNode1 == nil && rightNode2 != nil {
			return false
		} else if rightNode1 != nil && rightNode2 == nil {
			return false
		}
		
		if (rightNode1 != nil && rightNode2 != nil) {
			
			if rightNode1?.val != rightNode2?.val { return false }
			
			stack.append((rightNode1!, rightNode2!))
		}
	}
	return true
}
