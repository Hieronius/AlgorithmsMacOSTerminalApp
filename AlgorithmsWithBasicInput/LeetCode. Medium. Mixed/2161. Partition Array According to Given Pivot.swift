//
//  2161. Partition Array According to Given Pivot.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 16.08.2025.
//

import Foundation

// MARK: 2161. Partition Array According to Given Pivot

class Solution {
	
	func pivotArray(_ nums: [Int], _ pivot: Int) -> [Int] {
		
		var lessThenPivotArray: [Int] = []
		var arrayOfPivots: [Int] = []
		var moreThenPivotArray: [Int] = []
		
		for num in nums {
			
			if num < pivot { lessThenPivotArray.append(num) }
			else if num == pivot { arrayOfPivots.append(num) }
			else if num > pivot { moreThenPivotArray.append(num) }
		}
		return lessThenPivotArray + arrayOfPivots + moreThenPivotArray
	}
}
