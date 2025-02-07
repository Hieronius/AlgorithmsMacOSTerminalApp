//
//  274. H-index.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 28.12.2024.
//

import Foundation

/*
 let papers = [3, 0, 6, 1, 5]
 let papers1 = [1,3,1]

 func hIndex(_ citations: [Int]) -> Int {
	 guard citations.count > 1 else { return citations[0] >= 1 ? 1 : 0 }

	 var sortedAr = citations.sorted(by: >)

	 while (sortedAr.filter {$0 >= sortedAr.count}.count != sortedAr.count) {
		 sortedAr.removeLast()

	 }

	 return sortedAr.count
 }
 */


