//
//  3838. Weighted Word Mapping.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 25.07.2026.
//

import Foundation

// MARK: 3838. Weighted Word Mapping

class Solution {
	
	func mapWordWeights(_ words: [String], _ weights: [Int]) -> String {
		
		let englishLetters: [Character] = [
			"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
			"n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"
		]
		
		let alphabetPositions: [Character: Int] = Dictionary(uniqueKeysWithValues: zip(englishLetters, weights))
		
		let reversedAlphabetPositions: [Int: String] = [
			25: "a",
			24: "b",
			23: "c",
			22: "d",
			21: "e",
			20: "f",
			19: "g",
			18: "h",
			17: "i",
			16: "j",
			15: "k",
			14: "l",
			13: "m",
			12: "n",
			11: "o",
			10: "p",
			9: "q",
			8: "r",
			7: "s",
			6: "t",
			5: "u",
			4: "v",
			3: "w",
			2: "x",
			1: "y",
			0: "z"
		]

		
		var weightSum = ""
		
		for word in words {
			
			var wordWeight = 0
			
			for char in word {
				wordWeight += alphabetPositions[char, default: 0]
			}
			print(wordWeight)
			
			let char = reversedAlphabetPositions[wordWeight % 26] ?? ""
			print(char)
			
			weightSum += char
		}
		
		return weightSum
		
	}
}
let solution = Solution()
print(solution.mapWordWeights(["abcd","def","xyz"], [5,3,12,14,1,2,3,2,10,6,6,9,7,8,7,10,8,9,6,9,9,8,3,7,7,2]))
