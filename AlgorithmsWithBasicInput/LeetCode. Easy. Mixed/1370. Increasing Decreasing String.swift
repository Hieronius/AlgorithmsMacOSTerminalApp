//
//  1370. Increasing Decreasing String.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 10.03.2025.
//

import Foundation

// MARK: 1370. Increasing Decreasing String

let s1 = "aaaabbbbcccc"
let s2 = "rat"

class Solution {

	// MARK: Time Complexity O(n*k) where k == 26 or O(1) so overall it's O(n)
	// MARK: Space Complexity O(1)

	func sortString(_ s: String) -> String {

		var answer = "" // Space Complexity O(1)
		var hashTable: [Character: Int] = [:] // Space Complexity O(1) due to 26 english letters max
		let alphabet = "abcdefghijklmnopqrstuvwxyz" // Space Complexity O(1)

		for char in s { // Time Complexity O(n)
			hashTable[char, default: 0] += 1 // Time Complexity O(1)
		}

		// Time Complexity O(n)
		while hashTable.values.reduce(0, +) > 0 {

			// O(k - 26 as max) so it will be O(1)
			for char in alphabet {

				if hashTable[char] != nil {
					if hashTable[char]! > 0 {
						answer.append(char) // Time Complexity O(1)
						hashTable[char]! -= 1 // Time Complexity O(1)
					}
				}
			}

			// O(k - 26 as max) so it will be O(1)
			for char in alphabet.reversed() {

				if hashTable[char] != nil {
					if hashTable[char]! > 0 {
						answer.append(char) // Time Complexity O(1)
						hashTable[char]! -= 1 // Time Complexity O(1)
					}
				}

			}
		}

		return answer
	}
}

let solution = Solution()
print(solution.sortString(s1))
print(solution.sortString(s2))
