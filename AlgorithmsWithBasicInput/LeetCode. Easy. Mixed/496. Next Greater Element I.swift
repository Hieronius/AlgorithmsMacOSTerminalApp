//
//  496. Next Greater Element I.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 21.03.2025.
//

import Foundation

// MARK: 496. Next Greater Element I

let nums1 = [4,1,2]
let nums2 = [1,3,4,2]

let nums11 = [2,4]
let nums22 = [1,2,3,4]

let nums111 = [4,1,2]
let nums222 = [1,2,3,4]

let nums1111 = [1,3,5,2,4]
let nums2222 = [6,5,4,3,2,1,7]

let nums12 = [2,1,3]
let nums23 = [2,3,1]

class Solution {

	// MARK: Time Complexity O(n) * (O(n) + O(n) + O(m - index + 1) = O(n) * (O(n) + O(m - index + 1)) = O(n + m)
	// MARK: Space Complexity O(n)
	// nums1.count = n
	// nums2.count = m

	func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {

		var answer: [Int] = [] // Space Complexity O(n)

		// Time Complexity O(n)
		outerLoop: for first in nums1 {

			// Time Complexity O(n)
			guard let index = nums2.firstIndex(of: first) else { return [-1] }

			//Time Complexity O(n) + O(1)
			if (nums2[index+1..<nums2.count].filter {$0 > (first)}).count > 0  {

				// Time Complexity O(m - index + 1)
			innerLoop: for second in nums2[index+1..<nums2.count] {

				// Time Complexity O(1)
				if first < second {

					answer.append(second) // Time Complexity O(1)
					break innerLoop
					}
					}

				} else {
					answer.append(-1) // Time Complexity O(1)
				}
		}

		return answer
	}
}

let solution = Solution()
//print(solution.nextGreaterElement(nums1, nums2))
//print(solution.nextGreaterElement(nums11, nums22))
//print(solution.nextGreaterElement(nums111, nums222))
//print(solution.nextGreaterElement(nums1111, nums2222))
print(solution.nextGreaterElement(nums12, nums23))
