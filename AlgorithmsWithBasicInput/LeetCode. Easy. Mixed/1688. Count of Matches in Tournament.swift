//
//  1688. Count of Matches in Tournament.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 11.08.2025.
//

import Foundation

// MARK: 1688. Count of Matches in Tournament

class Solution {
	
	func numberOfMatches(_ n: Int) -> Int {
		
		var matches = 0
		var teams = n
		
		while teams != 1 {
			
			if teams % 2 != 0 {
				
				teams -= 1
				matches += 1
			}
			
			let games = teams / 2
			matches += games
			teams /= 2
		}
		return matches
	}
}
