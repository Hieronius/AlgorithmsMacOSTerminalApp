//
//  2574. Left and Right Sum Differences.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 03.08.2025.
//

import Foundation

// MARK: 2574. Left and Right Sum Differences

class Solution {
	
	func leftRightDifference(_ nums: [Int]) -> [Int] {
		
		let n = nums.count
		var answer = Array(repeating: 0, count: n)
		var i = 0
		
		while i < n {
			
			if i != 0 {
				
				let leftNum = nums[0..<i].reduce(0, +)
				let rightNum = nums[i+1..<n].reduce(0, +)
				answer[i] = abs(leftNum - rightNum)
				
			} else {
				
				answer[i] = nums[i+1..<n].reduce(0, +)
			}
			
			i += 1
		}
		
		return answer
	}
}
