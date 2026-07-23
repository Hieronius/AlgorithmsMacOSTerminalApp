//
//  35. Search Insert Position.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 22.07.2026.
//

import Foundation

// 35. Search Insert Position

// https://leetcode.com/problems/search-insert-position/description/

class Solution {
	
	var nums1 = [1,3,5,6]
	var target1 = 5 // answer is 2 or 999
	
	var nums2 = [1,3,5,6]
	var target2 = 7 // answer is 4 or 999
	
	var nums3 = [1,3,5,6]
	var target3 = 0 // answer is 0 or 999
	
	var nums4 = [2, 4, 6, 8, 10]
	var target4 = 5 // answer is 2
	
	var nums5 = [1, 3, 5, 7, 9]
	var target5 = 8 // answer is 4
	
	var nums6 = [1,3,5,6]
	var target6 = 2
	
	func searchInsert(_ nums: [Int], _ target: Int) -> Int {
		
		var leftIndex = 0
		var rightIndex = nums.count - 1
		
		while leftIndex <= rightIndex {
			
			let midIndex = (leftIndex + rightIndex) / 2
			let pivot = nums[midIndex]
			
			if target == pivot {
				return midIndex
				
			} else if target > pivot {
				leftIndex = midIndex + 1
				
			} else if target < pivot {
				rightIndex = midIndex - 1
			}
		}
		return leftIndex
		}
}

let solution = Solution()
//print(solution.searchInsert(solution.nums1, solution.target1))
//print(solution.searchInsert(solution.nums2, solution.target2))
//print(solution.searchInsert(solution.nums3, solution.target3))
//print(solution.searchInsert(solution.nums4, solution.target4))
//print(solution.searchInsert(solution.nums5, solution.target5))
print(solution.searchInsert([2,7,8,9,10], 9))
//print(1 / 2)
