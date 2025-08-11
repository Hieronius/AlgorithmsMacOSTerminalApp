import Foundation

class Solution {
	
	func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
		
		var answer: [Int] = []
		
		for first in nums {
			
			var counter = 0
			
			for second in nums {
				
				if first > second {
					
					counter += 1
				}
			}
			answer.append(counter)
		}
		return answer
	}
}
