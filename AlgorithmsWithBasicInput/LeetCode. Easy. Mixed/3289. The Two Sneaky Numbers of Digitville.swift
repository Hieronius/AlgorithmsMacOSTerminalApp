//
//  3289. The Two Sneaky Numbers of Digitville.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 13.11.2024.
//

import Foundation
/*
 class Solution {
	 func getSneakyNumbers(_ nums: [Int]) -> [Int] {
		// I should create a dictionary to store any numbers founded in the array
	 // it should store the counter of each value
	 // after i should return any of the numbers of which containts more than 1 appearance
	 // probably by iterating through the dictionary and appending it to the array in any order

	 // Numbers can't be negative but seems like it's not important
	 // By constraints i can say that there is not more than 102 elements in array
	 // minimum array.count should be 4 <= n

	 // 1. Let's create a suitable dictionary to count number appearances

	 var numDict: [Int: Int] = [:]

	 // 2. Iterate through an array of numbers and add them as a key and it's appearance as value

	 for num in nums {
		 numDict[num, default: 0] += 1
	 }

	 // 3. Iterate through our dictionary to find keys which stores more than 1 or simply 2 due to problem description

	 var result: [Int] = []

	 for (key, value) in numDict {
		 if value > 1 {
			 result.append(key)
		 }

		 // 4. Return a result of mischiveous numbers

	 }
	 return result
 }
 }
 */
