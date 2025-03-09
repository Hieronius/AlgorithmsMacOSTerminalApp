//
//  682. Baseball Game.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 07.03.2025.
//

import Foundation

//let ops1 = ["5","2","C","D","+"]
//let ops2 = ["5","-2","4","C","D","9","+","+"]
//let ops3 = ["1","C"]

class Solution {

	// MARK: Time Complexity O(n) + O(1) = O(n) total
	// MARK: Space Complexity = O(1) + O(1) = O(1)

	func calPoints(_ operations: [String]) -> Int {

		guard !operations.isEmpty else { return 0 }

		var result: [Int] = [] // Space Complexity O(n)

		var currentIndex = -1 // Space Complexity O(1)

		for char in operations { // Time Complexity O(n)

			switch char { // Time Complexity O(1)
			case "+":
				result.append(result[currentIndex] + result[currentIndex-1])
				currentIndex += 1
			case "C":
				result.removeLast()
				currentIndex -= 1
			case "D":
				result.append(result[currentIndex] * 2)
				currentIndex += 1
			default:
				guard let num = Int(String(char)) else { return 0 }
				result.append(num)
				currentIndex += 1
			}
		}
		return result.reduce(0, +) // Time Complexity O(n)
	}
}

//let solution = Solution()
//print(solution.calPoints(ops1))
//print(solution.calPoints(ops2))
//print(solution.calPoints(ops3))
