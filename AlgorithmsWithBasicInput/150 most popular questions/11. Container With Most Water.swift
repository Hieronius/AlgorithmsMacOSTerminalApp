//
//  11. Container With Most Water.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 11.01.2025.
//

import Foundation

class Solution {

	func maxArea(_ height: [Int]) -> Int {

		guard !height.isEmpty else { return 0 }
		guard !(height.count == 1) else { return 0 }
		guard !(height.count == 2) else { return min(height[0], height[1]) }

		var leftIndex = 0
		var rightIndex = height.count - 1
		var maxVolume = 0

		while leftIndex < rightIndex {

			let leftMaxHeight = height[leftIndex]
			let rightMaxHeight = height[rightIndex]

			let volume = min(leftMaxHeight, rightMaxHeight) * (rightIndex - leftIndex)

			maxVolume = max(maxVolume, volume)

			if leftMaxHeight <= rightMaxHeight {
				leftIndex += 1
			} else if leftMaxHeight > rightMaxHeight {
				rightIndex -= 1
			}
		}

		return maxVolume
	}
}
