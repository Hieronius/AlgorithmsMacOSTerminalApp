//
//  1598. Crawler Log Folder.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 04.04.2025.
//

import Foundation

// MARK: 1598. Crawler Log Folder

let commands1 = ["d1/","d2/","../","d21/","./"]

class Solution {

	// MARK: Time Complexity O(n) * O(m) = O(m*n)
	// MARK: Space Complexity O(1)

	func minOperations(_ logs: [String]) -> Int {

		var counter = 0 // Space Complexity O(1)

		// Time Complexity O(n)
		for com in logs {

			// Time Complexity O(1)
			switch com {

			// Time Complexity O(m) where n = string.length + O(1)
			case let cmd where cmd.contains(where: { $0.isNumber }):
				counter += 1

			case "../":
				if counter != 0 {
					counter -= 1
				}

			case "./":
				continue

			default: break
			}
		}
		return counter
	}
}

let solution = Solution()
print(solution.minOperations(commands1))
