//
//  LeetCode 3925. Concatenate Array With Reverse.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 22.07.2026.
//

import Foundation

// MARK: LeetCode 3925. Concatenate Array With Reverse
// https://leetcode.com/problems/concatenate-array-with-reverse/

class Solution {
	func concatWithReverse(_ nums: [Int]) -> [Int] {
		nums + nums.reversed()
	}
}
