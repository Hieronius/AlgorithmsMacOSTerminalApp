//
//  1720. Decode XORed Array.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 27.03.2025.
//

import Foundation

// MARK: 1720. Decode XORed Array

let encoded = [1,2,3]
let	first = 1

let encoded1 = [6,2,7,3]
let first1 = 4

class Solution {

	// MARK: Time Complexity O(n) * O(1) = O(n)
	// MARK: Space Complexity O(m) + O(1) = O(m)
	// n = encoded.count
	// m = answer.count

	func decode(_ encoded: [Int], _ first: Int) -> [Int] {

		var current = first // Space Complexity O(1)
		var index = 0 // Space Complexity O(1)
		var answer: [Int] = [current] // Space Complexity O(m)

		// Time Complexity O(n)
		while index < encoded.count {

			// Space Complexity O(1)
			let decoded = current ^ encoded[index]

			// Time Complexity O(1)
			answer.append(decoded)

			// Time Complexity O(1)
			current = decoded

			// Time Complexity O(1)
			index += 1
		}

		return answer
	}
}

let solution = Solution()
print(solution.decode(encoded, first))
print(solution.decode(encoded1, first1))
