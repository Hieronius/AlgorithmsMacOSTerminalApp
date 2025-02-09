//
//  File.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 08.02.2025.
//

import Foundation

// Speed O(log n), Memory O(1) because Set will store a limited amount of sums

class Solution {

	func isHappy(_ n: Int) -> Bool {

		var newN = -1
		var oldNum = n
		var set: Set<Int> = []

		while newN < Int.max {
			var sum = 0

			for digit in String(oldNum) {

				guard let num = Int(String(digit)) else { return false }

				sum += (num * num)

			}

			if sum == 1 {
				return true
			} else if sum == n {
				return false
			}

			if !set.contains(sum) {
				set.insert(sum)
				newN = sum
				oldNum = sum
			} else {
				return false
			}
		}
		return false
	}
}
