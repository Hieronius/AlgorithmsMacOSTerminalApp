//
//  3304. Find the K-th Character in String Game I.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 30.03.2025.
//

import Foundation

// MARK: 3304. Find the K-th Character in String Game I

class Solution {

	// MARK: Time Complexity O(k) * O(1) = O(k)
	// MARK: Space Complexity O(k)

	func kthCharacter(_ k: Int) -> Character {

		// Space Complexity O(k)
		var temp: [Character] = ["a"]

		// Time Complexity O(k)
		while temp.count < k {

			// Time Complexity O(k)
			for char in temp {

				// Time Complexity O(1)
				temp.append(nextAlphabeteCharacter(char))
			}
		}

		return temp[k-1]
	}

	// Time Complexity O(1)
	func nextAlphabeteCharacter(_ char: Character) -> Character {

		// Time Complexity O(1)
		if char == "z" { return "a" }

		// Time Complexity O(1)
		return Character(UnicodeScalar(char.unicodeScalars.first!.value + 1)!)
	}
}
