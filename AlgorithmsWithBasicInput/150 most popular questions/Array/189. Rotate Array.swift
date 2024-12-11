//
//  189. Rotate Array.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 26.11.2024.
//

import Foundation

/*
 Speed O(k) or O(n) i guess, and Memory O(1)
 func rotate(_ nums: inout [Int], _ k: Int) {

	 guard !nums.isEmpty else { return }
	 guard k > 0 else { return }

	 for _ in 0..<k {

	   let temp = nums.removeLast()
		nums.insert(temp, at: 0)

	 }

 }
 */
