//
//  1002. Find Common Characters.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 20.03.2025.
//

import Foundation

// MARK: 1002. Find Common Characters

let words1 = ["bella","label","roller"]
let words2 = ["cool","lock","cook"]

// MARK: Evaluate and Optimise 21.03.25

class Solution {

	func commonChars(_ words: [String]) -> [String] {

		let frequency = words.count

		// Initial char frequency
		var hashTable: [Character: Int] = [:]

		for char in words[0] {

			hashTable[char, default: 0] += 1
		}

		// Start from the next word

		for word in words[1..<words.count] {

			var secondHashTable: [Character: Int] = [:]

			for char in word {
				secondHashTable[char, default: 0] += 1
			}

			for key in hashTable.keys {
				if secondHashTable[key] != nil {
					hashTable[key] = min(secondHashTable[key]!, hashTable[key]!)
				} else {
					hashTable[key] = nil
				}
			}
		}

		var answer: [String] = []

		for (key, value) in hashTable {

			for _ in 0..<value {
				answer.append(String(key))
			}
		}

		return answer
	}
}

let solution = Solution()
print(solution.commonChars(words1))
print(solution.commonChars(words2))
