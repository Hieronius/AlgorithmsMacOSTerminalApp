//
//  2490. Circular Sentence.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 08.04.2025.
//

import Foundation

// MARK: 2490. Circular Sentence

let sentence1 = "leetcode exercises sound delightful"
let sentence2 = "eetcode"
let sentence3 = "Leetcode is cool"

class Solution {

	// MARK: Time Complexity O(n)
	// MARK: Space Complexity O(n)

	func isCircularSentence(_ sentence: String) -> Bool {

		// Time O(n) | Space O(up to sentence.count)
		let array = sentence.split(separator: " ")

		// Time O(n) | Space O(array.count)
		let mapped = array.map {($0.first!, $0.last!)}

		// Space O(1)
		var index = 0

		// Time O(mapped.count)
		while index < mapped.count - 1 {

			// Time O(1)
			if mapped[index].1 != mapped[index+1].0 {
				return false
			}
			// Time O(1)
			index += 1
		}

		// Time O(1)
		if mapped[0].0 != mapped[mapped.count - 1].1 {
			return false
		}

		return true

	}
}

let solution = Solution()
print(solution.isCircularSentence(sentence1))
print(solution.isCircularSentence(sentence2))
print(solution.isCircularSentence(sentence3))
