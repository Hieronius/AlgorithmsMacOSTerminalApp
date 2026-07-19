//
//  66. Plus One.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 19.07.2026.
//

import Foundation

// https://leetcode.com/problems/plus-one/description/

class Solution {
	
	// wrong test case
	let testCase1 = [7,2,8,5,0, 9,1,2,9,5, 3,6,6,7,3, 2,8,4,3,7, 9,5,7,7,4, 7,4,9,4,7, 0,1,1,1,7, 4,0,0,6]

	let input2 = [9, 9]
	let input1 = [1, 2, 3]
	let input3 = [4,3,2,1]
	let input4 = [9]
	
	func plusOne(_ digits: [Int]) -> [Int] {
		
		// 0. create a buffer to work with digits
		
		var buffer = digits
		
		// 1. create a flag to detect if there nonzero numbers
		
		var didFoundSpecialNumber = false
		
		// 2. loop for digits from the opposite end
		
		// it was fucking nice and i'm proud of this line
		// tell me more about being stupid please
		for index in buffer.indices.reversed() {
			
			if buffer[index] == 9 {
				buffer[index] = 0
			} else {
				buffer[index] += 1
				didFoundSpecialNumber = true
				break
			}
		}
		
		if didFoundSpecialNumber == true {
			return buffer
		} else {
			return [1] + buffer
		}
	}
}
