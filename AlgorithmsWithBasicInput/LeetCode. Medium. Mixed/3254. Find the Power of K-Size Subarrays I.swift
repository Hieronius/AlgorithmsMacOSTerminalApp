//
//  3254. Find the Power of K-Size Subarrays I.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 16.11.2024.
//

import Foundation

/*
 func resultsArray(_ nums: [Int], _ k: Int) -> [Int] {

		 var result: [Int] = []
		 var windowStart = 0

		 for windowEnd in k-1..<nums.count {
			 let window = Array(nums[windowStart...windowEnd])
			 if (window == window.sorted()) && helper(window) {
				 guard let max = window.max() else { return result }
				 result.append(max)
			 } else {
				 result.append(-1)
			 }
			 windowStart += 1
		 }
		 return result
	 }

 func helper(_ ar: [Int]) -> Bool {
	 var currentIndex = 0

	 while currentIndex < ar.count - 1 {
		 if ar[currentIndex] + 1 != ar[currentIndex + 1] {
			 return false
		 }
		 currentIndex += 1
	 }
	 return true
 }
 */
