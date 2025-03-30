//
//  128. Longest Consecutive Sequence.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 15.02.2025.
//

import Foundation

//let nums1 = [0,1,2,4,5,7] // answer ["0->2","4->5","7"]
//let nums2 = [0,2,3,4,6,8,9] // answer ["0","2->4","6","8->9"]
//
//class Solution {
//
//	func summaryRanges(_ nums: [Int]) -> [String] {
//
//		guard !nums.isEmpty else { return "" }
//		guard nums.count > 1 else { return "\(nums[0])" }
//
//		var result: [String] = []
//		var leftIndex = 0
//		var rightIndex = 1
//		var window = ""
//
//		// nums.count = 5, last element = rightIndex == 4
//		print("hello")
//		while rightIndex < nums.count {
//			print("hello")
//
//			if nums[leftIndex] + 1 == nums[rightIndex] && !window.contains("->") {
//
//				window.append("\(nums[leftIndex])->")
//				leftIndex += 1
//				rightIndex += 1
//
//			} else if nums[leftIndex] + 1 != nums[rightIndex] && !window.contains("->") {
//
//				result.append("\(nums[leftIndex])")
//				leftIndex += 1
//				rightIndex += 1
//
//			} else if nums[leftIndex] + 1 == nums[rightIndex] && window.contains("->") {
//
//				leftIndex += 1
//				rightIndex += 1
//
//
//			} else if nums[leftIndex] + 1 != nums[rightIndex] && window.contains("->") {
//
//				window.append("\(nums[rightIndex])")
//				result.append(window)
//				window = ""
//				leftIndex += 1
//				rightIndex += 1
//
//			}
//		}
//		result.append(window)
//		return result
//	}
//}

//let solution = Solution()
print("hello")
//print(solution.summaryRanges(nums1))
//print(solution.summaryRanges(nums2))
