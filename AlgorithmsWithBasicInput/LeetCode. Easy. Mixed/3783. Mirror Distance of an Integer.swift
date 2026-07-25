//
//  3783. Mirror Distance of an Integer.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 23.07.2026.
//

import Foundation

// MARK: 3783. Mirror Distance of an Integer

class Solution {
	func mirrorDistance(_ n: Int) -> Int {
		
		var multiplier = 1 // how to identify that there is huge num with 3 digits?
		var reversedNum = 0
		var initialNum = n
		
		var reversedDigits: [Int] = []
		
		while initialNum > 0 {
			
			let digit = initialNum % 10 // 3
			reversedDigits.append(digit)
			initialNum /= 10
		}
		
		func applyMultiplier(_ multiplier: Int) -> Int {
			
			var result = 1
			
			for _ in 1..<multiplier {
				result *= 10
			}
			
			return result
		}
		
		multiplier = reversedDigits.count // 3
		
		for digit in reversedDigits {
			
			let value = digit * applyMultiplier(multiplier)
			reversedNum += value
			multiplier -= 1
		}
		
		return abs(n - reversedNum)
	}
}

let solution = Solution()
print(solution.mirrorDistance(7))
