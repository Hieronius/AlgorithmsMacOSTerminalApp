//
//  3945. Digit Frequency Score.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 22.07.2026.
//

import Foundation

// MARK: 3945. Digit Frequency Score

class Solution {
	func digitFrequencyScore(_ n: Int) -> Int {
		
		let string = String(n)
		var accumulator: [String.Element: Int] = [:]
		var score = 0
		
		for char in string {
			accumulator[char, default: 0] += 1
		}
		
		for key in accumulator.keys {
			let digit = Int(String(key)) ?? 0
			let value = accumulator[key] ?? 0
			let digitScore =  digit * value
			
			score += digitScore
		}
		return score
	}
}

let solution = Solution()
print(solution.digitFrequencyScore(122))
