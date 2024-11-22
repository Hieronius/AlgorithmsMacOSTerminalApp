//
//  3190. Find Minimum Operations to Make All Elements Divisible by Three.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 13.11.2024.
//

import Foundation

/*
 class Solution {
	 func minimumOperations(_ nums: [Int]) -> Int {
	  var operations = 0
		 for num in nums {
			 operations += checkNum(num)
		 }
		 return operations
 }

 func checkNum(_ num: Int) -> Int {

	 guard !(num % 3 == 0) else { return 0 }

	 var ratio = 1

	 while !(((num + ratio) % 3 == 0) || ((num - ratio) % 3 == 0)) {
	 ratio += 1
	 }

	 return ratio
 }
 }
 */
