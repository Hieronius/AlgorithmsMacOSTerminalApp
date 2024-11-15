//
//  3146. Permutation Difference between Two Strings.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 14.11.2024.
//

import Foundation

/*
 Speed O(n)
 class Solution {
	 func findPermutationDifference(_ s: String, _ t: String) -> Int {

	 guard s.count > 1 else { return 0 }

	 var sum = 0

	 var currentIndex = 0
	 let sArray = Array(s)
	 let tArray = Array(t)

	 while currentIndex < s.count {
		 let char = sArray[currentIndex]
		 let dif = tArray.firstIndex(of:char) ?? 999
		 sum += abs(currentIndex - dif)
		 currentIndex += 1
	 }

	 return sum
 }
 }
 */
