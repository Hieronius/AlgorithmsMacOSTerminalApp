//
//  3794. Reverse String Prefix.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 26.07.2026.
//

import Foundation

// MARK: 3794. Reverse String Prefix

// MARK: Stats: 26.07.26. Spent 8 min

// MARK: CODE HERE

class Solution {
	func reversePrefix(_ s: String, _ k: Int) -> String {
		
		let prefix = s.prefix(k)
		let suffix = s.suffix(s.count - k)
		let reversedPrefix = prefix.reversed()
		let newString = String(reversedPrefix) + String(suffix)
		return newString
	}
}
