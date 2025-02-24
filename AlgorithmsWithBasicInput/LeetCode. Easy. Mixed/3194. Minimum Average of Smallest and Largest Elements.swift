//
//  3194. Minimum Average of Smallest and Largest Elements.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 23.02.2025.
//

import Foundation

class Solution {

	// MARK: Speed Complexity (n log n) due to sorted() operation
	// MARK: Memory Complexity O(n) due to copy of nums.sorted and allocation memory for averages array
	func minimumAverage(_ nums: [Int]) -> Double {

		var sortedAr = nums.sorted()
		var averages: [Double] = []

		var leftIndex = 0
		var rightIndex = nums.count - 1

		while leftIndex < rightIndex {

			let minNum = Double(sortedAr[leftIndex])
			let maxNum = Double(sortedAr[rightIndex])
			let average = (minNum + maxNum) / 2

			averages.append(average)

			leftIndex += 1
			rightIndex -= 1
		}

		return averages.min() ?? 0.0
	}
}
