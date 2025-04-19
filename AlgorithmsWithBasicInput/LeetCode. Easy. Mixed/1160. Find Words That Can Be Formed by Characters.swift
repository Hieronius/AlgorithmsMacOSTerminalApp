//
//  1160. Find Words That Can Be Formed by Characters.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 06.04.2025.
//

import Foundation

// MARK: 1160. Find Words That Can Be Formed by Characters

let words = ["cat","bt","hat","tree"], chars = "atach"

class Solution {

	// MARK: Time Complexity O(words.count * word.count)
	// MARK: Space Complexity O(1)

	func countCharacters(_ words: [String], _ chars: String) -> Int {


		// Time O(1), Space O(1)
		let hashTable = chars.reduce(into: [Character: Int]()) {$0[$1, default: 0] += 1}

		// Space O(1)
		var length = 0

		// Time O(words.count)
	outerLoop: for word in words {

		// Space O(1)
		var localHashTable = hashTable

		// Space O(1)
		var flag = true

		// Time O(word.count)
	innerLoop: for char in word {

		// Time O(1)
		if localHashTable[char] == nil || localHashTable[char] == 0 {
			flag = false // Time O(1)
			break innerLoop
		} else {
			localHashTable[char]! -= 1 // Time O(1)
		}
	}
		// Time O(1)
		if flag {
			length += word.count // Time O(1)
		}
	}
		return length
	}
}

let solution = Solution()
print(solution.countCharacters(words, chars))
