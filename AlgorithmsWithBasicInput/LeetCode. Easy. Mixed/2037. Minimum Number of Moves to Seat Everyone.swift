//
//  2037. Minimum Number of Moves to Seat Everyone.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 07.08.2025.
//

import Foundation

// MARK: 2037. Minimum Number of Moves to Seat Everyone

class Solution {
	
	func minMovesToSeat(_ seats: [Int], _ students: [Int]) -> Int {
		
		let n = seats.count
		var moves = 0
		let sortedSeats = seats.sorted()
		let sortedStudents = students.sorted()
		var index = 0
		
		while index < n {
			
			let currentSeat = sortedSeats[index]
			var currentStudent = sortedStudents[index]
			
			while currentStudent != currentSeat {
				
				if currentStudent > currentSeat {
					
					currentStudent -= 1
					
				} else if currentStudent < currentSeat {
					
					currentStudent += 1
				}
				moves += 1
				
			}
			index += 1
		}
		return moves
	}
}
