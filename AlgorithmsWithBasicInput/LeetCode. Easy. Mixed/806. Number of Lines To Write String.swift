//
//  806. Number of Lines To Write String.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 10.04.2025.
//

import Foundation

// MARK: 806. Number of Lines To Write String

class Solution {

	// MARK: Time Complexity O(n) where n = s.count
	// MARK: Space Complexity O(1)

	func numberOfLines(_ widths: [Int], _ s: String) -> [Int] {

		// Time and Space theoretically O(n) but practically O(26)
		let alphabet = (UnicodeScalar("a").value...UnicodeScalar("z").value)
			.compactMap { UnicodeScalar($0) }
			.map { Character($0) }

		// Time and Space theoretically O(n) but practically O(26)
		let zipped = zip(alphabet, widths)

		// Time and Space theoretically O(n) but practically O(26)
		var hashTable = Dictionary(uniqueKeysWithValues: zipped)

		// Space O(1)
		var counterOfLines = 1

		// Space O(1)
		var currentLine = 0

		// Time Complexity O(n) where n = s.count
		for char in s {

			// Time Complexity O(1)
			guard let charWidth = hashTable[char] else { return [] }

			// Time Complexity O(1)
			if currentLine + charWidth <= 100 {
				// Time Complexity O(1)
				currentLine += charWidth
			} else {
				// Time Complexity O(1)
				counterOfLines += 1
				// Time Complexity O(1)
				currentLine = charWidth
			}
		}

		return [counterOfLines, currentLine]
	}
}
