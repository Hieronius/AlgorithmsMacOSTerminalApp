//
//  2119. A Number After a Double Reversal.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 22.02.2025.
//

import Foundation

class Solution {

	// MARK: Speed Complexity O(1), Memory Complexity O(1)

	func isSameAfterReversals(_ num: Int) -> Bool {

		guard let reversed1 = Int(String(String(num).reversed())) else { return false }
		guard let reversed2 = Int(String(String(reversed1).reversed())) else { return false }

		return num == reversed2
	}
}
