//
//  1530. Number of Good Leaf Nodes Pairs.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 22.11.2026.
//

import Foundation

// MARK: Problem Name: 1530. Number of Good Leaf Nodes Pairs

// MARK: Stats: 17.11.26 - 22.11.26 6h

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
	
	func findLeafNodes(_ root: TreeNode?) -> [[TreeNode]] {
		
		guard let root = root else { return [[]] }
		
		var leafs: [[TreeNode]] = []
		var queue: [(TreeNode, [TreeNode])] = [(root, [root])]
		
		while !queue.isEmpty {
			
			let (current, nodes) = queue.removeFirst()
			
			if let leftNode = current.left {
				
				let newPath = nodes + [leftNode]
				queue.append((leftNode, newPath))
			}
			
			if let rightNode = current.right {
				
				let newPath = nodes + [rightNode]
				queue.append((rightNode, newPath))
			}
			
			if current.left == nil && current.right == nil {
				
				leafs.append(nodes)
			}
		}
		
		return leafs
	}
	
	func countPairs(_ root: TreeNode?, _ distance: Int) -> Int {
		
		var goodPairsCounter = 0
		
		let leafs = findLeafNodes(root)
		
		guard leafs.count > 1 else { return 0 }
		
		var leftIndex = 0
		var rightIndex = 1
		
		// left = 0
		// right = 1
		// leafs[0] compare with leafs[1]
		
		// loop to find leafs for comparison
		
		mainLoop: while leftIndex < leafs.count - 1 {
			
			let leafOne = leafs[leftIndex]
			let leafTwo = leafs[rightIndex]
			
			let range = min(leafOne.count, leafTwo.count)
			
			// loop to go through 2 leafs in parallel
			
			secondLoop: for index in 0..<range {
				
				// found common node
				
				if leafOne[index] === leafTwo[index] {
					
					let steps1 = leafOne.count - index - 1
					let steps2 = leafTwo.count - index - 1
					
					// found good pair
					
					if (steps1 + steps2) <= distance {
						
						goodPairsCounter += 1
						break secondLoop
					}
				}
			}
			// place to continue after loop 2
			
			rightIndex += 1
			
			// leaf [1, 2, 3].count = 3, last index = 2, if index = 2, stop
			if rightIndex == leafs.count {
				
				leftIndex += 1 // start new cycle of main loop
				rightIndex = leftIndex + 1 // adjust rightIndex
			}
		}
		return goodPairsCounter
	}
