//
//  3668. Restore Finishing Order.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 25.07.2026.
//

import Foundation

class Solution {
	
	func recoverOrder(_ order: [Int], _ friends: [Int]) -> [Int] {
		
		var friendsDict: [Int: Int] = [:]
		
		for friend in friends {
			
			friendsDict[friend] = 0
		}
		
		for (index, position) in order.enumerated() {
			
			if friendsDict[position] != nil {
				friendsDict[position] = index
			}
		}
		
		var answer: [Int] = []
		
		let sortedDict = friendsDict.sorted(by: { $0.value < $1.value })
		
		for (key, _) in sortedDict {
			answer.append(key)
		}
		return answer
	}
}

let solution = Solution()
print(solution.recoverOrder([1, 4, 5, 3, 2], [2, 5]))
