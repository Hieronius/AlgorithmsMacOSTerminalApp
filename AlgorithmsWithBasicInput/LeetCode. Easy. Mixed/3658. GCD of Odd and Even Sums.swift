//
//  3658. GCD of Odd and Even Sums.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 26.07.2026.
//

import Foundation

// MARK: 3658. GCD of Odd and Even Sums

// MARK: Stats: 26.07.26. Solved in 17 min

// MARK: CODE HERE

class Solution {
	
	func gcdOfOddEvenSums(_ n: Int) -> Int {
		
		var evenSum = 0
		var oddSum = 0
		
		for num in 1...n * 2 {
			
			if num % 2 != 0 {
				oddSum += num
			} else {
				evenSum += num
			}
		}
		
		var number = evenSum > oddSum ? evenSum : oddSum
		var divisor = evenSum > oddSum ? oddSum : evenSum
		
		while number % divisor != 0 {
			
			let reminder = number % divisor
			number = divisor
			divisor = reminder
		}
		
		return divisor
	}
}
