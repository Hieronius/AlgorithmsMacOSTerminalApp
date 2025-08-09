import Foundation

// MARK: 3512. Minimum Operations to Make Array Sum Divisible by K

class Solution {
	
	func minOperations(_ nums: [Int], _ k: Int) -> Int {
		
		var counter = 0
		var currentArraySum = nums.reduce(0, +)
		
		while currentArraySum % k != 0 {
			
			counter += 1
			currentArraySum -= 1
		}
		return counter
	}
}
