//
//  1021. Remove Outermost Parentheses.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 27.02.2025.
//

import Foundation

//let s1 = "(()())(())"
//let s2 = "(()())(())(()(()))"
//let s3 = "()()"

class Solution {

	struct Stack<T> {

		var stack: [T] = []

		mutating func push(_ char: T) {
			self.stack.append(char)
		}

		mutating func pop() -> T? {
			self.stack.popLast()
		}

		func printContent() {
			print(self.stack)
		}
	}

	func removeOuterParentheses(_ s: String) -> String {

		var stack = Stack<Character>()
		var isOpenBracket = false
		var isClosedBracket = false

		for char in s {

			if isOpenBracket && isClosedBracket {
				isOpenBracket = false
				isClosedBracket = false
				continue
			}

			if char == "(" && !isOpenBracket {
				isOpenBracket = true
				continue
			}

			if char == ")" && isClosedBracket {
				continue
			}

			if char == ")" && !isClosedBracket && isOpenBracket {
				isClosedBracket = true
				stack.push(char)
			}

			if (char == "(" && isOpenBracket) || (char == ")" && isClosedBracket) {
				stack.push(char)
			}
		}

//		for _ in 0..<stack.stack.count {
//			print(stack.pop()!)
//		}
		print(stack.stack)


		return ""
	}
}

//let solution = Solution()
//solution.removeOuterParentheses(s1)
//solution.removeOuterParentheses(s2)
