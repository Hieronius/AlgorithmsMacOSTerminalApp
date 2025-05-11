//
//  171. Excel Sheet Column Number.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 26.04.2025.
//

import Foundation

// MARK: 171. Excel Sheet Column Number

let column1 = "ZY"

class Solution {

	// MARK: Time Complexity O(n)
	// MARK: Space Complexity O(1)

	func titleToNumber(_ columnTitle: String) -> Int {

		var answer = 0.0

		let alphabet: [Character: Double] = [
			"A": 1,
			"B": 2,
			"C": 3,
			"D": 4,
			"E": 5,
			"F": 6,
			"G": 7,
			"H": 8,
			"I": 9,
			"J": 10,
			"K": 11,
			"L": 12,
			"M": 13,
			"N": 14,
			"O": 15,
			"P": 16,
			"Q": 17,
			"R": 18,
			"S": 19,
			"T": 20,
			"U": 21,
			"V": 22,
			"W": 23,
			"X": 24,
			"Y": 25,
			"Z": 26
		]

		var p = 0.0
		for char in columnTitle.reversed() {
			let result = alphabet[char]! * pow(26.0, p)
			answer += result
			p += 1.0
		}

		return Int(answer)
	}
}

let solution = Solution()
print(solution.titleToNumber(column1))
