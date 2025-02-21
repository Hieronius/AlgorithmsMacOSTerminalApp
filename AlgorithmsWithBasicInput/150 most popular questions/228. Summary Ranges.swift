//
//  228. Summary Ranges.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 20.02.2025.
//

import Foundation

// MARK: Speed O(n), Memory O(n)

class Solution {

	func summaryRanges(_ nums: [Int]) -> [String] {

		guard !nums.isEmpty else { return [] }
		guard nums.count > 1 else { return ["\(nums[0])"] }

		var result: [String] = []
		var leftIndex = 0
		var rightIndex = 1
		var window = ""

		while rightIndex < nums.count {

			if nums[leftIndex] + 1 != nums[rightIndex] && !window.contains("->") {

				result.append("\(nums[leftIndex])")
				leftIndex += 1
				rightIndex += 1

			} else if nums[leftIndex] + 1 == nums[rightIndex] && !window.contains("->") {

				window.append("\(nums[leftIndex])->")
				leftIndex += 1
				rightIndex += 1

			} else if nums[leftIndex] + 1 == nums[rightIndex] && window.contains("->") {

				leftIndex += 1
				rightIndex += 1

			} else if nums[leftIndex] + 1 != nums[rightIndex] && window.contains("->") {

				window.append("\(nums[leftIndex])")
				result.append(window)
				window = ""
				leftIndex = rightIndex
				rightIndex += 1

			}

		}

		if nums[leftIndex] - 1 != nums[leftIndex - 1] && !window.contains("->") {

			result.append("\(nums[leftIndex])")

		} else if nums[leftIndex] - 1 == nums[leftIndex - 1] && !window.contains("->") {

			window.append("\(nums[leftIndex])->")

		} else if nums[leftIndex] - 1 == nums[leftIndex - 1] && window.contains("->") {

			window.append("\(nums[leftIndex])")
			result.append(window)

		} else if nums[leftIndex] - 1 != nums[leftIndex - 1] && window.contains("->") {

			window.append("\(nums[leftIndex - 1])")
			result.append(window)

		}

		return result
	}
}
