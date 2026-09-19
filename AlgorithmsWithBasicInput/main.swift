// MARK: - Plan of practice. Ask chatGPT to privide exercises and add more topics
/*
 1. Concurrency
 2. ARC
 3. @escaping @autoclosure
 4. Initialization
 5. High order functions
 6. Error handling
 7. Inout
 8. Variadic parameters
 9. Generics
 10. Optionals
 11. Type casting
 12. Structs
 13. Classes
 14. Enums
 15. Data types
 16. Data flow (defer)
 17. Computed properties
 18. Property observers
 19. Subscripts
 20. Protocols
 21. Collection Protocols: Sequence and so on
 22. CopyOnWrite
 */

// Keep the main thread alive to see the output
// RunLoop.main.run()

import Foundation

// MARK: https://leetcode.com/problem-list/depth-first-search/ // filter for my problems about DFS

// MARK: PREorder: ROOT|Left|Right
// MARK: INorder: Left|ROOT|Right
// MARK: POSTorder: Left|Right|ROOT

// MARK: Problem Name: 1022. Sum of Root To Leaf Binary Numbers

// MARK: Stats: 03.09.26

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
	
	
	// MARK: upd 05.09.26 Draw tree on ipad at each iteration of inorder traversal and build complete set of CPU instructions to see that whan you pop nodes from the stack it's not going one by one but might be from leaf to root of the tree which is making me a little bit confused
	
	func sumRootToLeaf(_ root: TreeNode?) -> Int {
			
		var nums: [[Int]] = []
		var num: [Int] = []
		var stack: [TreeNode] = []
		var current = root
		
		while current != nil || !stack.isEmpty {
			
			while let node = current {
				
				stack.append(node)
				num.append(node.val)
				current = node.left
			}
			let node = stack.removeLast()
			current = node.right
			nums.append(num)
			num.removeLast()
		}
		
		var result = 0
		
		for num in nums {
			
			let stringArray = num.map { String($0)}
			let singleString = stringArray.joined()
			let intFromBinary = Int(singleString, radix: 2) ?? 0
			result += intFromBinary
		}
		return result
		}
		
	
	// MARK: - Merge Binary Trees By Iteration
	
	func mergeByIteration(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
		
		guard let root1 = root1 else { return root2 }
		guard let root2 = root2 else { return root1 }
		
		var stack: [(TreeNode?, TreeNode?)] = [(root1, root2)]
		
		while !stack.isEmpty {
			
			let nodesPair = stack.removeLast()
			
			guard let node1 = nodesPair.0 else { continue }
			guard let node2 = nodesPair.1 else { continue }
			
			node1.val += node2.val
			
			// force unwrap because we sure there is node1 and node2 left nodes
			
			if node1.left == nil {
				node1.left = node2.left
			} else {
				stack.append((node1.left, node2.left))
			}
			
			if node1.right == nil {
				node1.right = node2.right
			} else {
				stack.append((node1.right, node2.right))
			}
			
		}
		return root1
	}
	
	// MARK: - Merge Binary Trees By Recursion
	
	func mergeByRecursion(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
		
		// We return a new node or a node from tree 1 as foundation
		
		guard let root1 = root1 else { return root2 }
		guard let root2 = root2 else { return root1 }
		
		// merge values and move in preorder (root -> left -> right)
		
		root1.val += root2.val
		
		root1.left = mergeByRecursion(root1.left, root2.left)
		
		root1.right = mergeByRecursion(root1.right, root2.right)
		
		return root1
	}
	
	
	// MARK: - Invert Binary Tree By Recursion
	
	func invertByRecursion(_ root: TreeNode?) -> TreeNode? {
		
		guard let root = root else { return nil }
		
		// 1. invert left node
		
		root.left = invertByRecursion(root.left)
		
		// 2. invert right node
		
		root.right = invertByRecursion(root.right)
		
		// 3. swap left with right and return the node
		
		let temp = root.left
		
		root.left = root.right
		root.right = temp
		
		return root
	}
	
	// MARK: - Invert Binary Tree By Iteration (Queue)
	
	func invertByIteration(_ root: TreeNode?) -> TreeNode? {
		
		guard let root = root else { return nil }
		
		var queue: [TreeNode] = [root]
		
		while !queue.isEmpty {
			
			let node = queue.removeFirst()
			let temp = node.left
			node.left = node.right
			node.right = temp
			
			if let leftNode = node.left {
				queue.append(leftNode)
			}
			if let rightNode = node.right {
				queue.append(rightNode)
			}
		}
		return root
	}
	
	// MARK: - Inorder Binary Tree Traversal By Recursion (left -> root -> right)
	
	func inorderByRecursion(_ root: TreeNode?) -> [Int] {
		
		guard let root = root else { return [] }
		
		return inorderByRecursion(root.left) + [root.val] + inorderByRecursion(root.right)
	}
	
	// MARK: - Inorder Binary Tree Traversal By Iteration (left -> root -> right)
	
	func inorderByIteration(_ root: TreeNode?) -> [Int] {
		
		var result: [Int] = []
		var stack: [TreeNode] = []
		var current = root
		
		while current != nil || !stack.isEmpty {
			
			// 1. traverse left
			while let node = current {
				
				// go left as far as possible
				
				stack.append(node)
				current = node.left
			}
			// 2. visit current node
			let node = stack.removeLast()
			// 3. traverse right
			result.append(node.val)
			current = node.right
		}
		return result
	}
	
	// MARK: - Postorder N-ary Tree Traversal By Iteration (right -> left -> root)
	
	func postorderByIteration(_ root: Node?) -> [Int] {
		
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
	
	
	// MARK: - Preorder Binary Tree Traversal By Recursion (root -> left -> right)
	
	func preorderByRecursion(_ root: TreeNode?) -> [Int] {
		
		guard let root = root else { return [] }
		
		return [root.val] + preorderByRecursion(root.left) + preorderByRecursion(root.right)
	}
	
	// MARK: - Preorder Binary Tree Traversal By Iteration (root -> left -> rigth)
	
	func preorderByIteration(_ root: TreeNode?) -> [Int] {
		
		guard let root = root else { return [] }
		
		var result: [Int] = []
		var stack: [TreeNode] = [root]
		
		while !stack.isEmpty {
			
			let node = stack.removeLast()
			result.append(node.val)
			
			if let rightNode = node.right { stack.append(rightNode) }
			if let leftNode = node.left { stack.append(leftNode) }
			
		}
		return result
	}
	
	// MARK: - Postorder Binary Tree Traversal By Recursion (right -> left -> root)
	
	func postorderByRecursion(_ root: TreeNode?) -> [Int] {
		
		guard let root = root else { return [] }
		
		return postorderByRecursion(root.left) + postorderByRecursion(root.right) + [root.val]
	}
	
	// MARK: - Postorder Binary Tree Traversal By Iteration (right -> left -> root)
	
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
	
	// MARK: - MaxDeath of the Tree with Recursion
	
	func maxDepth(_ root: TreeNode?) -> Int {
		
		guard let root = root else { return 0 }
		return 1 + max(maxDepth(root.left), maxDepth(root.right))
	}
}


let node4 = TreeNode(val: 4)
let node5 = TreeNode(val: 5)
let node2 = TreeNode(val: 2, left: node4, right: node5)
let node6 = TreeNode(val: 6)
let node3 = TreeNode(val: 3, left: nil, right: node6)
let root = TreeNode(val: 1, left: node2, right: node3)

let solution = Solution()
let number = Int("010", radix: 2)
var array = [1, 2, 3]
array.removeLast()
print(array)



