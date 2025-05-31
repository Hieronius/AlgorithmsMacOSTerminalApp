//
//  2351. First Letter to Appear Twice.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 20.03.2025.
//

import Foundation

// MARK: 2351. First Letter to Appear Twice

let string1 = "abccbaacz"
let string2 = "abcdd"

class Solution {

	// MARK: Time Complexity O(n)
	// MARK: Space Complexity O(26) or O(1)

	func repeatedCharacter(_ s: String) -> Character {

		var hashTable: [Character: Int] = [:] // Space Complexity O(26)
		var answer: Character = "*" // Space Complexity O(1)

		// Time Complexity O(n)
		for char in s {

			if hashTable[char] == nil { // Time O(1)
				hashTable[char, default: 0] += 1 // Time O(1)
			} else {
				answer = char // Time O(1)
				break
			}
		}
		return answer
	}
}
