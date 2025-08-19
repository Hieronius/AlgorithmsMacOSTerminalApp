//
//  1637. Widest Vertical Area Between Two Points Containing No Points.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 08.08.2025.
//

import Foundation

// MARK: 1637. Widest Vertical Area Between Two Points Containing No Points

class Solution {
	
	func maxWidthOfVerticalArea(_ points: [[Int]]) -> Int {
		
		let sortedPoints = points.sorted { first, second in
			first[0] < second[0]
		}
		
		let n = points.count
		var answer = 0
		var index = 0
		
		while index < n - 1 {
			
			let width = sortedPoints[index+1][0] - sortedPoints[index][0]
			answer = max(answer, width)
			index += 1
		}
		return answer
	}
}
