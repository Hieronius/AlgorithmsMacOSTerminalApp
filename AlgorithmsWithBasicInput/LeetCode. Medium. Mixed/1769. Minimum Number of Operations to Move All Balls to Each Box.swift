//
//  1769. Minimum Number of Operations to Move All Balls to Each Box.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 15.08.2025.
//

import Foundation

// MARK: 1769. Minimum Number of Operations to Move All Balls to Each Box

class Solution {
	
	func minOperations(_ boxes: String) -> [Int] {
		
		let n = boxes.count
		var answer: [Int] = []
		
		for box in 0..<n {
			
			var operations = 0
			
			for (index, value) in boxes.enumerated() {
				
				if index != box {
					
					if value != "0" {
						
						if index < box {
							
							let moves = box - index
							operations += moves
							
						} else if index > box {
							
							let moves = index - box
							operations += moves
						}
					}
				}
			}
			answer.append(operations)
		}
		return answer
	}
}
