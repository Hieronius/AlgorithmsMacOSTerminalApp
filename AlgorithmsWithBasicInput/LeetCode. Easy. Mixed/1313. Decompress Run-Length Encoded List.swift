//
//  1313. Decompress Run-Length Encoded List.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 11.08.2025.
//

import Foundation

// MARK: 1313. Decompress Run-Length Encoded List

class Solution {
	
	func decompressRLElist(_ nums: [Int]) -> [Int] {
		
		let size = nums.count
		var answer: [Int] = []
		var freqIndex = 0
		var valueIndex = 1
		
		while valueIndex < size {
			
			let frequency = nums[freqIndex]
			let value = nums[valueIndex]
			let array = Array(repeating: value, count: frequency)
			answer += array
			
			freqIndex += 2
			valueIndex += 2
		}
		return answer
	}
}
