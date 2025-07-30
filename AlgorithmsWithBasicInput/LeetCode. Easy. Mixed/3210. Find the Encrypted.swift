//
//  3210. Find the Encrypted.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 29.07.2025.
//

import Foundation

func getEncryptedString(_ s: String, _ k: Int) -> String {
	
	var answer = ""
	let stringArray = Array(s)
	
	for index in 0..<s.count {
		answer.append(stringArray[(index + k) % s.count])
	}
	
	return answer
}
