//
//  1837. Sum of Digits in Base K.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 08.03.2025.
//

import Foundation

// MARK: 1837. Sum of Digits in Base K

class Solution {

	// MARK: Time Complexity O(log n)
	// MARK: Space Complexity O(1)

	func sumBase(_ n: Int, _ k: Int) -> Int {

		var basicNum = n // Space Complexity O(1)
		var answer = "" // Space Complexity O(1)

		while basicNum != 0 { // Time Complexity O(log n) due to it's math's nature
			answer.append(String(basicNum % k)) // Time Complexity O(1) + O(1) + O(1)
			basicNum /= k // Time Complexity O(1)
		}

		// Time Complexity O(1) + O(log n) + O(log n) + O(1) + O(1) + O(log n) = O(log n) because answer can hold only logN amount of digits
		return (String(answer.reversed())).map { Int(String($0))! }.reduce(0, +)
	}
}
