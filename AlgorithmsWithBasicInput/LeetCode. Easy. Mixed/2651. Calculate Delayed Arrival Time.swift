//
//  2651. Calculate Delayed Arrival Time.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 08.03.2025.
//

import Foundation

// MARK: 2651. Calculate Delayed Arrival Time

class Solution {

	// MARK: Time Complexity O(1)

	func findDelayedArrivalTime(_ arrivalTime: Int, _ delayedTime: Int) -> Int {
		return (arrivalTime + delayedTime) % 24
	}
}
