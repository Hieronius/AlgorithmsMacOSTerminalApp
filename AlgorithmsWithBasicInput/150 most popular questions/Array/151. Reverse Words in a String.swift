import Foundation

class Solution {

	func reverseWords(_ s: String) -> String {

		return s
		.trimmingCharacters(in: .whitespaces)
		.split(separator: " ")
		.reversed()
		.joined(separator: " ")
	}
}
