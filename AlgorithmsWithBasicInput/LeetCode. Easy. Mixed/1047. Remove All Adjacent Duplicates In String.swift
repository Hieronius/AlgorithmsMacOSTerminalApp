//
//  1047. Remove All Adjacent Duplicates In String.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 06.04.2025.
//

import Foundation

// MARK: 1047. Remove All Adjacent Duplicates In String

let s1 = "abbaca"
let s2 = "azxxzy"
let s3 = "aaaaaaaa"

class Solution {

	// MARK: Time Complexity O(n^2)
	// MARK: Space Complexity O(n)

	func removeDuplicates(_ s: String) -> String {

		guard s.count > 2 else { return s }


		var sArr = Array(s)

			var firstIndex = 0
			var secondIndex = 1

			while firstIndex < sArr.count - 1 {

				if firstIndex > -1 && sArr[firstIndex] == sArr[secondIndex] {
					sArr.removeSubrange(firstIndex...secondIndex)
					firstIndex -= 1
					secondIndex -= 1
				} else {
					firstIndex += 1
					secondIndex += 1
				}
			}
		return String(sArr)
	}
}

let solution = Solution()
print(solution.removeDuplicates(s1))
//print(solution.removeDuplicates(s2))
print(solution.removeDuplicates(s3))
