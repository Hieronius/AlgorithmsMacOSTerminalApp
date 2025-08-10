//
//  1389. Create Target Array in the Given Order.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 09.08.2025.
//

import Foundation

// MARK: 1389. Create Target Array in the Given Order

class Solution {
	
	func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
		
		let n = nums.count
		var target = Array(repeating: 0, count: n)
		var position = 0
		
		while position < n {
			
			let num = nums[position]
			let index = index[position]
			target.insert(num, at: index)
			position += 1
		}
		return Array(target[0..<n])
	}
}
