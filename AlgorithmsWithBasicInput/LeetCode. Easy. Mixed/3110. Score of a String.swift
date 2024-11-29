//
//  3110. Score of a String.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 13.11.2024.
//

import Foundation

/*
 class Solution {
	 func scoreOfString(_ s: String) -> Int {

 var index = 0
 var result = 0

 let arrayOfChars = Array(s)

 while index < arrayOfChars.count - 1 {

	 guard let leftChar = arrayOfChars[index].unicodeScalars.first,
		   let rightChar = arrayOfChars[index+1].unicodeScalars.first else {
			   index += 1
			   continue
		   }
		   let leftValue = Int(leftChar.value)
		   let rightValue = Int(rightChar.value)
		   result += abs(leftValue - rightValue)
		   index += 1
 }

 return result

 }
 }
 */
