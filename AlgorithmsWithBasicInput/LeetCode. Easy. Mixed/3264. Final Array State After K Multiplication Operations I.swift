//
//  3264. Final Array State After K Multiplication Operations I.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 09.08.2025.
//

import Foundation

// MARK: 3264. Final Array State After K Multiplication Operations I

class Solution {
	
	func getFinalState(_ nums: [Int], _ k: Int, _ multiplier: Int) -> [Int] {
		
		var answer = nums
		var counter = 0
		
		while counter < k {
			
			let minValue = answer.min()!
			let index = answer.firstIndex(of: minValue)!
			answer[index] = minValue * multiplier
			counter += 1
		}
		return answer
	}
}
