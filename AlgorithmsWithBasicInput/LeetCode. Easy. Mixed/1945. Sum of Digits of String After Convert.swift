//
//  1945. Sum of Digits of String After Convert.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 16.03.2025.
//

import Foundation

// MARK: 1945. Sum of Digits of String After Convert

let s1 = "iiii", k1 = 1
let s2 = "leetcode", k2 = 2
let s3 = "zbax", k3 = 2

class Solution {

	// MARK: Time Complexity O(1) + O(1) + O(n) + O(n) * O(n) = O(n^2)
	// MARK: Space Complexity O(1) + O(1) + O(1) = O(1)

	func getLucky(_ s: String, _ k: Int) -> Int {

		// 1. Get english alphabet with positions of it's letters

		// Time Complexity O(26) or O(1)
		// Space Complexity O(26) or O(1)
		let alphabetArray = (UnicodeScalar("a").value...UnicodeScalar("z").value)
			.compactMap { UnicodeScalar($0) }
			.map { Character($0) }

		// Time Complexity O(26) + O(26) = O(26) or O(1)
		// Space Complexity O(26) or O(1)
		let alphabetDict = Dictionary(uniqueKeysWithValues: zip(alphabetArray, 1...26))

		// 2. Convert input string of characters to string of digits

		var digits = "" // Space Complexity O(1)

		// Time Complexity O(n or s.count)
		for char in s where alphabetDict[char] != nil {
			digits += String(alphabetDict[char]!)
		}

		// 3. Transform the string of digits K times

		// Time Complexity O(n or s.count) * O(1) * O(1) + O(n or s.count) == O(n)
		var sum = digits.map { Int(String($0))! }.reduce(0, +)

		// Time Complexity O(n or k)
		for _ in 1..<k {

			// Time Complexity O(n)
			sum = String(sum).map { Int(String($0))! }.reduce(0, +)
		}

		return sum
	}
}

let solution = Solution()
print(solution.getLucky(s1, k1))
print(solution.getLucky(s2, k2))
print(solution.getLucky(s3, k3))
