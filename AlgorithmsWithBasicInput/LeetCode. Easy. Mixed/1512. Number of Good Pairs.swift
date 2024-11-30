//
//  1512. Number of Good Pairs.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 12.11.2024.
//

import Foundation

/*
let test1 = [1,2,3,1,1,3]
let test2 = [1,1,1,1]
let test3 = [1,2,3]

func numIdenticalPairs(_ nums: [Int]) -> Int {

		guard nums.count > 1 else { return 0 }

		var leftIndex = 0
		var rightIndex = 1
		var counter = 0

		while leftIndex < nums.count - 1 {

			if rightIndex == nums.count {

				leftIndex += 1
				rightIndex = leftIndex + 1

				if leftIndex == nums.count - 1 {
					break
				}
			}

			if  rightIndex < nums.count &&
				leftIndex < rightIndex &&
				nums[leftIndex] == nums[rightIndex] {
				counter += 1
			}

			rightIndex += 1
		}
		return counter
	}

 import XCTest

 // Executed 3 tests, with 0 failures (0 unexpected) in 0.031 (0.033) seconds

 class Tests: XCTestCase {
	 private let s = Solution()
	 func test0() {
		 XCTAssertEqual(s.numIdenticalPairs([1,2,3,1,1,3]), 4)
	 }
	 func test1() {
		 XCTAssertEqual(s.numIdenticalPairs([1,1,1,1]), 6)
	 }
	 func test2() {
		 XCTAssertEqual(s.numIdenticalPairs([1,2,3]), 0)
	 }
 }

 Tests.defaultTestSuite.run()
 */
