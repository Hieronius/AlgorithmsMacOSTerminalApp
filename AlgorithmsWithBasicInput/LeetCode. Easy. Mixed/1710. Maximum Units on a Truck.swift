//
//  1710. Maximum Units on a Truck.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 20.03.2025.
//

import Foundation

// MARK: 1710. Maximum Units on a Truck

let boxTypes1 = [[1,3],[2,2],[3,1]]
let truckSize1 = 4

let boxTypes2 = [[5,10],[2,5],[4,7],[3,9]]
let truckSize2 = 10

class Solution {

	// MARK: Theoretical Time Complexity O(n log n) + O(n) * O(m) * O(1) = O(n log n) * O(n * m)
	// MARK: Practical Time Complexity O(n log n) + O(n) * O(m) * O(1) = O(n log n) * O(n * m)
	// MARK: Theoretical Space Complexity O(1) + O(1) + O(n) = O(n)
	// MARK: Practical Space Complexity O(1) + O(1) + O(n) = O(n)
	// boxTypes.count = n
	// boxTypes[i] = m
	// truckSize = k

	func maximumUnits(_ boxTypes: [[Int]], _ truckSize: Int) -> Int {

		var unitsInside = 0 // Space Complexity O(1)
		var loadedSpace = 0 // Space Complexity O(1)

		// Time Complexity O(n log n) | Space O(n)
		let sortedBoxes = boxTypes.sorted {$0[1] > $1[1]}

		// Time Complexity O(n)
		for item in sortedBoxes {

			// Time Complexity O(m)
			for box in 0..<item[0] {

				// Time Complexity O(1)
				if loadedSpace < truckSize {

					unitsInside += item[1] // // Time Complexity O(1)
					loadedSpace += 1 // // Time Complexity O(1)
				}
			}
		}
		return unitsInside
	}
}

let solution = Solution()
//print(solution.maximumUnits(boxTypes1, truckSize1))
print(solution.maximumUnits(boxTypes2, truckSize2))
