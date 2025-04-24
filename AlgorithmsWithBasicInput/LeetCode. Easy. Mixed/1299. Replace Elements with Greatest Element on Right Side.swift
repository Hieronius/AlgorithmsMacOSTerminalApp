//
//  1299. Replace Elements with Greatest Element on Right Side.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 04.04.2025.
//

import Foundation

// MARK: 1299. Replace Elements with Greatest Element on Right Side

let arr = [17,18,5,4,6,1]

class Solution {

	// MARK: Time Complexity O(n - 1) * O(n - index + 1) equal to O(n^2) simplified
	// MARK: Space Complexity O(n-1) + O(1) = O(n-1)

	func replaceElements(_ arr: [Int]) -> [Int] {

		// Time Complexity O(1)
		guard arr.count > 1 else { return [-1] }

		// Space Complexity O(n - 1)
		var tempAr: [Int] = []

		// Time Complexity O(n - 1)
		for index in 0..<arr.count-1 {

			// Time Complexity O(n - index + 1) | Space O(1)
			let max = arr[index+1..<arr.count].max()!

			// Time Complexity O(1)
			tempAr.append(max)
		}
		// Time Complexity O(1)
		tempAr.append(-1)

		return tempAr
	}
}

let solution = Solution()
print(solution.replaceElements(arr))
