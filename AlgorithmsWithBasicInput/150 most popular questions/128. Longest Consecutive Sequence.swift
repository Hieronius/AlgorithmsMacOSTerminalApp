//
//  128. Longest Consecutive Sequence.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 15.02.2025.
//

import Foundation

let nums1 = [0,1,2,4,5,7] // answer ["0->2","4->5","7"]
let nums2 = [0,2,3,4,6,8,9] // answer ["0","2->4","6","8->9"]

class Solution {

	func summaryRanges(_ nums: [Int]) -> [String] {

		guard !nums.isEmpty else { return "" }
		guard nums.count > 1 else { return "\(nums[0])" }

		var result: [String] = []
		var leftIndex = 0

		while leftIndex < nums.count {

			
	}
}
