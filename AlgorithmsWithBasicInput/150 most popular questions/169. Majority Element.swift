//
//  169. Majority Element.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 25.11.2024.
//

import Foundation

/*
 // O(n) speed and O(n) memory
 func majorityElement(_ nums: [Int]) -> Int {

	 var storage: [Int: Int] = [:]
	 var result = 0

	 for num in nums {
		 storage[num, default: 0] += 1
	 }

	 let max = storage.values.max()

	 for key in storage.keys {
		 if storage[key] == max {
			 result = key
		 }
	 }
	 return result
 }
 */
