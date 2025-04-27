//
//  824. Goat Latin.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 16.04.2025.
//

import Foundation

// MARK: 824. Goat Latin

var sentence1 = "I speak Goat Latin"

class Solution {

	// MARK: Time Complexity O(n^2) due to nested loop
	// MARK: Space Complexity O(n^2) due to m * n letters in word

	func toGoatLatin(_ sentence: String) -> String {

		let stringAr = sentence.split(separator: " ")

		var answer = ""

		var index = 0

		while index < stringAr.count {
			let word = String(stringAr[index])
			var result = modify(word)

			for _ in 0...index {
				result.append("a")
			}
			answer += result
			answer += " "

			index += 1
		}
		answer.removeLast()

		return answer
	}

	// Time Complexity O(1)
	// Space Complexity O(n)
	func modify(_ word: String) -> String {

		let vowels: [Character] = ["a", "e", "u", "o", "i", "A", "E", "U", "O", "I"]
		guard let letter = word.first else { return word }

		var result = word

		if vowels.contains(letter) {
			result.append("ma")
		} else {
			result.removeFirst()
			result.append(letter)
			result.append("ma")
		}

		return result
	}
}

let solution = Solution()
print(solution.toGoatLatin(sentence1))
