//
//  209. Minimum Size Subarray Sum.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 15.01.2025.
//

import Foundation

let test1 = [2,3,1,2,4,3]
let test2 = [1,4,4]
let test3 = [1,1,1,1,1,1,1,1]
let test4 = [5,1,3,5,10,7,4,9,2,8]
let test5 = [1,1,1,1,7]
let test6 = [1, 4, 4]
let test7 = [10,5,13,4,8,4,5,11,14,9,16,10,20,8]

class Solution {

	func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {

		guard !nums.isEmpty else { return 0 }
		guard nums.count != 1 else { return (nums[0] >= target) ? 1 : 0 }
		guard nums[0] < target else { return 1 }

		var minLength = Int.max
		var windowStart = 0
		var windowEnd = 1
		var windowSum = nums[windowStart]
		var currentLength = 1
		var flag = true

		if windowSum >= target {
			return 1
		}

		while windowStart < nums.count {


			if flag && windowEnd < nums.count {
				windowSum += nums[windowEnd]
				windowEnd += 1
				currentLength += 1

			} else {

				windowSum -= nums[windowStart]
				windowStart += 1
				currentLength -= 1
				flag.toggle()
			}

			if windowSum >= target {
				minLength = min(minLength, currentLength)
				flag.toggle()

			}

		}
		return minLength == Int.max ? 0 : minLength
	}
}
