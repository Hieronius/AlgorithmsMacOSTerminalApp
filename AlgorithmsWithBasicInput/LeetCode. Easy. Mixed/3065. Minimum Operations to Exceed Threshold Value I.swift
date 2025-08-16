//
//  3065. Minimum Operations to Exceed Threshold Value I.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 11.08.2025.
//

import Foundation

// MARK: 3065. Minimum Operations to Exceed Threshold Value I

class Solution {
	
	func minOperations(_ nums: [Int], _ k: Int) -> Int {
		
		var counter = 0
		for num in nums {
			if num < k {
				counter += 1
			}
		}
		return counter
	}
}
