//
//  884. Uncommon Words from Two Sentences.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 13.03.2025.
//

import Foundation

// MARK: 884. Uncommon Words from Two Sentences

let s1 = "this apple is sweet", s2 = "this apple is sour"
let s3 = "apple apple", s4 = "banana"

class Solution {

	// MARK: Time Complexity O(n) + O(n) + O(n) = O(n)
	// MARK: Space Complexity O(n) + O(n) = O(n)

	func uncommonFromSentences(_ s1: String, _ s2: String) -> [String] {

		var answer: [String] = [] // Space Complexity O(n)

		var hashTable: [String: Int] = [:] // Space Complexity O(n)

		// Time Complexity O(n) for split and O(n) for `for in`
		for word in (s1 + " " + s2).split(separator: " ") {

			// Time Complexity O(1)
			hashTable[String(word), default: 0] += 1
		}

		// Time Complexity O(n)
		for (key, value) in hashTable {

			if value == 1 {
				answer.append(key) // Time Complexity O(1)
			}
		}

		return answer
	}
}

//let solution = Solution()
//
//print(solution.uncommonFromSentences(s1, s2))
//print(solution.uncommonFromSentences(s3, s4))
