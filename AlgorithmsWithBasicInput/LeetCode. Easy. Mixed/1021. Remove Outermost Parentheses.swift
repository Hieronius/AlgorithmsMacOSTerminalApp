// MARK: Problem Name: 1021. Remove Outermost Parentheses

// MARK: Stats: 27.07.26 - 30.07.26 30 min spent 3h15m,

// MARK: CODE HERE

let s1 = "(()())(())"
let s2 = "(()())(())(()(()))"
let s3 = "()()"

class Solution {

	struct Stack<T> {

		var stack: [T] = []
		
		var isEmpty: Bool {
			stack.isEmpty
		}

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
		var answer = ""

		for char in s {
			
			if stack.isEmpty && char == "(" {
				stack.push(char)
			} else if !stack.isEmpty && char == "(" {
				stack.push(char)
				answer.append("(")
				
			} else if char == ")" {
				
				if stack.isEmpty {
					continue
				} else {
					stack.pop()
					
					if !stack.isEmpty {
						answer.append(char)
					}
				}
			}
		}
		return answer
	}
}

let solution = Solution()
print(solution.removeOuterParentheses(s1))
//solution.removeOuterParentheses(s2)
