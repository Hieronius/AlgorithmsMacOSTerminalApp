//
//  1619. Mean of Array After Removing Some Elements.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 11.04.2025.
//

import Foundation

// MARK: 1619. Mean of Array After Removing Some Elements

let arr1 = [1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3]
let arr2 = [6,2,7,5,1,2,0,3,10,2,5,0,5,5,0,8,7,6,8,0]
let arr3 = [6,0,7,0,7,5,7,8,3,4,0,7,8,1,6,8,1,1,2,4,8,1,9,5,4,3,8,5,10,8,6,6,1,0,6,10,8,2,3,4]

class Solution {

	// MARK: Time Complexity O(n log n)
	// MARK: Space Complexity O(n)

	func trimMean(_ arr: [Int]) -> Double {

		var temp = (arr.map { Double($0) }).sorted()
		let size = arr.count / 20
		var sum: Double = 0.0
		for num in temp[0+size..<arr.count-size] {
			sum += num
		}

		let length = temp.count
		let mean = sum / Double(length-size-size)

		return mean
	}
}

let solution = Solution()
print(solution.trimMean(arr1))
//print(solution.trimMean(arr2))
//print(solution.trimMean(arr3))
