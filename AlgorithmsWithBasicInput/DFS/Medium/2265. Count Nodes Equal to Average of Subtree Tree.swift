/*
 Problem solution can be optimised to avoid multiple dfs traversing of each step
 */

import Foundation

// MARK: Problem Name: 2265. Count Nodes Equal to Average of Subtree Tree

// MARK: Stats: 23.10.26 1h

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
	
	func averageOfSubtree(_ root: TreeNode?) -> Int {
			
		guard let root = root else { return 0 }
		if root.left == nil && root.right == nil { return 1 }
		let nodes = recursiveDFS(root)
		let average = nodes.reduce(0, +) / nodes.count
		var result = 0
		if average == root.val { result = 1 }
		
		// base case for current node root.val?
		return result + averageOfSubtree(root.left) + averageOfSubtree(root.right)
	}
	
	func recursiveDFS(_ root: TreeNode?) -> [Int] {
		
		guard let root = root else { return [] }
		
		return [root.val] + recursiveDFS(root.left) + recursiveDFS(root.right)
	}
