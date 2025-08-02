import Foundation

// MARK: 3467. Transform Array by Parity

class Solution {
	
	func transformArray(_ nums: [Int]) -> [Int] {
		
		var zeroCounter = 0
		var onesCounter = 0
		var answer: [Int] = []
		
		for num in nums {
			
			if num % 2 == 0 {
				zeroCounter += 1
			} else {
				onesCounter += 1
			}
		}
		
		for zero in 0..<zeroCounter {
			answer.append(0)
		}
		
		for one in 0..<onesCounter {
			answer.append(1)
		}
		
		return answer
	}
}
