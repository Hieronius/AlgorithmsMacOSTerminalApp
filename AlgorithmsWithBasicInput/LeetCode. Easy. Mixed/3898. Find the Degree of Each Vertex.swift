//
//  3898. Find the Degree of Each Vertex.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 19.07.2026.
//

import Foundation

// MARK: 3898. Find the Degree of Each Vertex
// https://leetcode.com/problems/find-the-degree-of-each-vertex/description/


class Solution {
	
	func findDegrees(_ matrix: [[Int]]) -> [Int] {
		
		var result: [Int] = []
		
		for array in matrix {
			
			var counter = 0
			
			for num in array {
				counter += num
			}
			
			result.append(counter)
			counter = 0
		}
		
		return result
	}
}
