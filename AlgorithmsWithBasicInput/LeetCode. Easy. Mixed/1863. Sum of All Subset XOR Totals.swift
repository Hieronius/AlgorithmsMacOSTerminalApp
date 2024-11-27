//
//  1863. Sum of All Subset XOR Totals.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 16.11.2024.
//

import Foundation

/*
 class Solution {
	 func subsetXORSum(_ nums: [Int]) -> Int {

	 guard nums.count >= 1 else { return 0 }


	 var answer = subsets(nums).map { $0.reduce(0, ^) }.reduce(0, +)

	 return answer

 }

 func subsets(_ nums: [Int]) -> [[Int]] {
	 var result: [[Int]] = []
	 var currentSubset: [Int] = []

	 func backtrack(_ index: Int) {
		 // Add the current subset to the result
		 result.append(currentSubset)

		 // Explore further elements
		 for i in index..<nums.count {
			 currentSubset.append(nums[i]) // Include this element
			 backtrack(i + 1)               // Move to the next element
			 currentSubset.removeLast()     // Exclude this element (backtrack)
		 }
	 }

	 backtrack(0)
	 return result
 }
 }
 */
