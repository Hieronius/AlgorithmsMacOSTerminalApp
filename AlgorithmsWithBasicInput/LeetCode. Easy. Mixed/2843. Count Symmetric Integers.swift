//
//  2843. Count Symmetric Integers.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 19.03.2025.
//

import Foundation

// MARK: 2843. Count Symmetric Integers

class Solution {

	// MARK: Theoretical Time Complexity O(n) * O(log n) + O(n) + O(n) + O(1) + O(n) + O(n) = O(n^2)
	// MARK: Practical Time Complexity O(low...high) * O(log num.length) * O(1) = O(low...high) * O(log num.length)
	// MARK: Theoretical Space Complexity O(1) + O(n) + O(n) + O(n) + O(1) + O(n) + O(n) = O(n)
	// MARK: Practical Space Complexity O(1) + O(num.length) = O(num.length)

	func countSymmetricIntegers(_ low: Int, _ high: Int) -> Int {

		var counter = 0 // Space Complexity O(1)

		// Time Complexity O(low...high) or O(n - possible amount of elements)
		for num in low...high {

			// Theoretical Time Complexity O(log n) + O(n)
			// Practical Time Complexity O(1) * O(1) or O(num.length)
			// Theoretical Space Complexity O(n)
			// Practical Space Complexity O(1) or O(num.length)
			let stringNum = Array(String(num))

			// Theoretical Time Complexity O(log n) * O(n)
			// Practical Time Complexity O(1) * O(1) or O(num.length)
			// Theoretical Space complexity O(n)
			// Practical Space complexity O(1) or O(num.length)
			let stringArray = stringNum.map {String($0)}

			// Theoretical Time Complexity O(n) * O(n)
			// Practical Time Complexity O(1) * O(1) or O(num.length)
			// Theoretical Space complexity O(n)
			// Practical Space complexity O(1) or O(num.length)
			let numArray = stringArray.map {Int($0)!}

			// Theoretical & Practical Time Complexity O(1)
			if numArray.count % 2 != 0 {
				continue // Theoretical & Practical Time Complexity O(1)
			}

			// Theoretical & Practical Time Complexity O(1) | Space O(1)
			let size = numArray.count

			// Theoretical Time Complexity O(n/2) or O(n)
			// Practical Time Complexity O(n/2) or O(1) due to constraints
			// Theoretical Space complexity O(n/2) or O(n)
			// Practical Space complexity O(1) or O(num.length)
			let left = numArray[0..<size/2].reduce(0, +)

			// Theoretical Time Complexity O(n/2) or O(n)
			// Practical Time Complexity O(n/2) or O(1) due to constraints
			// Theoretical Space complexity O(n/2) or O(n)
			// Practical Space complexity O(1) or O(num.length)
			let right = numArray[size/2..<size].reduce(0, +)

			// Theoretical & Practical Time Complexity O(1)
			if left == right {

				// Theoretical & Practical Time Complexity O(1)
				counter += 1
			}
		}
		return counter
	}
}
