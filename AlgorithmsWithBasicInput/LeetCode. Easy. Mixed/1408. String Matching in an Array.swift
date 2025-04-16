//
//  1408. String Matching in an Array.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 14.04.2025.
//

import Foundation

// MARK: 1408. String Matching in an Array

let words1 = ["mass","as","hero","superhero"]
let words2 = ["leetcoder","leetcode","od","hamlet","am"]

class Solution {

	// MARK: Time Complexity O(n^3)
	// MARK: Space Complexity O(n)

	func stringMatching(_ words: [String]) -> [String] {

		let sortedWords = words.sorted()
		var answer: [String] = []

	outerLoop: for subString in sortedWords {

	innerLoop: for word in sortedWords {

				if word.contains(subString) && word != subString {
					answer.append(subString)
					break innerLoop
				}
			}
		}
		return answer
	}
}

  let solution = Solution()
print(solution.stringMatching(words2))
