//
//  167. Two Sum II - Input Array Is Sorted.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 10.01.2025.
//

import Foundation

class Solution {

	func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {

		// 0. Use two pointers to create an entity we will track our progress with

		var result = [1, 2]

		guard numbers.count > 2 else { return result }

		var leftIndex = 0
		var rightIndex = numbers.count - 1

		// 1. find the middle of the shelf and if it's higher than the target one -> shift the shelf

		let midIndex = numbers.count / 2

		// if numbers[midIndex] > target {
		//     rightIndex = midIndex - 1
		// }

		// 2. Now check left and right side of the shelf

		while leftIndex < rightIndex {

			// If we hit the mark -> return these cells

			if numbers[leftIndex] + numbers[rightIndex] == target {

				return [leftIndex + 1, rightIndex + 1]

			// if the result of addition is higher than the target -> shift the right cell

			} else if numbers[leftIndex] + numbers[rightIndex] > target {

				rightIndex -= 1

			} else if numbers[leftIndex] + numbers[rightIndex] < target {

				leftIndex += 1
			}
		}
		return result
	}

}
