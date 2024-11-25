//
//  26. Remove Duplicates from Sorted Array.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 23.11.2024.
//

import Foundation

/*
 Speed O(n), Memory O(1)

 class Solution {
	 func removeDuplicates(_ nums: inout [Int]) -> Int {

	 guard nums.count != 0 else { return 0 }
	 guard nums.count > 1 else { return 1 }

	 var leftIndex = 0
	 var rightIndex = nums.count - 1
	 var counter = 1

	 while leftIndex < rightIndex {

		 if nums[leftIndex] == nums[leftIndex+1] {
			 nums.remove(at: leftIndex)
			 rightIndex -= 1

		 } else if nums[leftIndex] != nums[leftIndex+1] {
			 counter += 1
			 leftIndex += 1
		 }

	 }
	 return counter
 }
 }
 */
