//
//  2331. Evaluate Boolean Binary Tree.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 09.08.2026.
//

import Foundation

// MARK: Problem Name: 2331. Evaluate Boolean Binary Tree

// MARK: Stats: 03.08.26 - 09.08.26. Time Spent: 30m + 30m + 1h + 1h + 30m + 30m + 30m = 4.5h rediculous amount of time for a simple easy problem

// MARK: CODE HERE

class Solution {
	
	func evaluateTree(_ root: TreeNode?) -> Bool {
		
		let resultOfTraversal = postorderByIteration(root)
		
		var stack: [Int] = []
		
		for num in resultOfTraversal {
			
			if num == 0 || num == 1 {
				stack.append(num)
			} else {
				let leftNode = convertIntToBool(stack.removeLast())
				let rightNode = convertIntToBool(stack.removeLast())
				var logicResult: Bool
				if num == 2 {
					logicResult = leftNode || rightNode
				} else {
					logicResult = leftNode && rightNode
				}
				stack.append(convertBoolToInt(logicResult))
			}
		}
		return convertIntToBool(stack.removeLast())
		
	}
	
	func convertIntToBool(_ num: Int) -> Bool {
		
		if num == 0 {
			return false
		} else {
			return true
		}
	}
	
	func convertBoolToInt(_ bool: Bool) -> Int {
		
		if bool == false {
			return 0
		} else {
			return 1
		}
	}
	
	// MARK: - Postorder By Iteration
	
	/// This implementation is correct on 08.08.26 disect it in last message from DeepSEEK
	func postorderByIteration(_ root: TreeNode?) -> [Int] {
		
		guard let root = root else { return [] }
		
		var result: [Int] = []
		var stack: [TreeNode] = [root]
		
		while !stack.isEmpty {
			
			let node = stack.removeLast()
			result.append(node.val)
			if let leftNode = node.left { stack.append(leftNode) }
			if let rightNode = node.right { stack.append(rightNode) }
		}
		return result.reversed()
	}
	
}
