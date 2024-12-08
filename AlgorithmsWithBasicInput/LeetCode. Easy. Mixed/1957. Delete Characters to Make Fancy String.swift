//
//  File.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 13.11.2024.
//

import Foundation

/*
 class Solution {
	 func makeFancyString(_ s: String) -> String {

		 // if there less than 3 chars it's fancy string
		 guard s.count >= 3 else { return s }

		 // we will store only "fancy" parts of the input
		 var result: [Character] = []

		 // first character of the input
		 var initialChar = s.first!

		 // counter for consecutive characters
		 var charCounter = 0

		 for char in s {

			 if charCounter < 2 && char == initialChar {
			   result.append(char)
			   charCounter += 1

			 } else if charCounter == 2 && char == initialChar {
				 continue

			 } else if char != initialChar {
				 initialChar = char
				 result.append(char)
				 charCounter = 1
			 }
		 }
		 return String(result)
	 }
 }
 */
