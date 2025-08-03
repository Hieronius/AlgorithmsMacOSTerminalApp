//
//  3541. Find Most Frequent Vowel and Consonant.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 01.08.2025.
//

import Foundation

// MARK: 3541. Find Most Frequent Vowel and Consonant

class Solution {
	
	func maxFreqSum(_ s: String) -> Int {
		
		var vowels: [Character: Int] = [:]
		var consonants: [Character: Int] = [:]
		
		for char in s {
			switch char {
			case "a", "e", "i", "o", "u":
				vowels[char, default: 0] += 1
			default:
				consonants[char, default: 0] += 1
			}
		}
		let maxVowelsFrequency = Int(vowels.values.max() ?? 0)
		let maxConsonantsFrequency = Int(consonants.values.max() ?? 0)
		return maxVowelsFrequency + maxConsonantsFrequency
	}
}
