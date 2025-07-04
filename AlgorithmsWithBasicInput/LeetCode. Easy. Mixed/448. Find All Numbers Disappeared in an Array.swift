import Foundation

// MARK: 448. Find All Numbers Disappeared in an Array

class Solution {

	// MARK: Time Complexity O(n)
	// MARK: Space Complexity O(n)

	func findDisappearedNumbers(_ nums: [Int]) -> [Int] {

		let temp = Set(nums)
		var answer: [Int] = []
		var current = 1
		for _ in 0..<nums.count {
			if !temp.contains(current) { answer.append(current) }
			current += 1
		}
		return answer
	}
}
