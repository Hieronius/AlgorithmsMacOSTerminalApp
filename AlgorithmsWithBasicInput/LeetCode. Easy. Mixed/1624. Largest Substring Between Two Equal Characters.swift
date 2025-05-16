//
//  1624. Largest Substring Between Two Equal Characters.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 22.04.2025.
//

import Foundation

// MARK: 1624. Largest Substring Between Two Equal Characters

let s = "aa"
let s1 = "abca"
let s2 = "cbzxy"

class Solution {

	// MARK: Time Complexity O(n^2)
	// MARK: Space Complexity O(n)

	func maxLengthBetweenEqualCharacters(_ s: String) -> Int {

		var hashTable: [Character: [Int]] = [:]

		for (index, char) in s.enumerated() {
			hashTable[char, default: []].append(index)
		}

		var answer = -1

		for value in hashTable.values {
			guard let minV = value.min() else { break }
			guard let maxV = value.max() else { break }
			answer = max(answer, maxV - minV - 1)
		}

		return answer
	}
}

let solution = Solution()
print(solution.maxLengthBetweenEqualCharacters(s))
print(solution.maxLengthBetweenEqualCharacters(s1))
print(solution.maxLengthBetweenEqualCharacters(s2))
