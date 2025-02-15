//
//  219. Contains Duplicate II.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 09.02.2025.
//

import Foundation

class Solution {

	func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {

		guard k > 0, nums.count > 1  else { return false }

		var size = 0

		if nums.count > k {
			size = k
		} else {
			size = nums.count
		}

		var window: [Int: Int] = [:]
		var windowStart = 0
		var windowEnd = k

		for index in 0..<size {
			let numToAdd = nums[index]

			if window[numToAdd] != nil {
				return true

			} else {
				window[numToAdd] = index
			}
		}

		while windowEnd < nums.count {

			let numToAdd = nums[windowEnd]
			let numToDelete = nums[windowStart]

			if window[numToAdd] != nil {
				return true

			} else {
				window[numToAdd] = windowEnd
			}
			windowEnd += 1
			window[numToDelete] = nil
			windowStart += 1

		}

		return false
	}
}
