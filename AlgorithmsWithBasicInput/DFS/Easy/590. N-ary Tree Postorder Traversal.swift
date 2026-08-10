//
//  590. N-ary Tree Postorder Traversal.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 09.08.2026.
//

import Foundation

// MARK: Problem Name: 590. N-ary Tree Postorder Traversal

// MARK: Stats: 09.08.26 30m

// MARK: CODE HERE

class Node {
	var val: Int
	var children: [Node]
	init(_ val: Int) {
		self.val = val
		self.children = []
	}
}

class Solution {
	
	func postorder(_ root: Node?) -> [Int] {
		
		// MARK: We are trying to implement PostOrder (right - left - root) traversal by iteration with stack
		
		guard let root = root else { return [] }
		
		var answer: [Int] = []
		var stack: [Node] = [root]
		
		while !stack.isEmpty {
			
			let node = stack.removeLast()
			answer.append(node.val)
			
			for child in node.children {
				stack.append(child)
			}
		}
		return answer.reversed()
	}
}
