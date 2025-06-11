//
//  2264. Largest 3-Same-Digit Number in String.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 17.04.2025.
//

import Foundation

// MARK: 2264. Largest 3-Same-Digit Number in String

let num1 = "6777133339"
let num2 = "2300019"
let num3 = "222"

class Solution {

	// MARK: Time Complexity O(n)
	// MARK: Space Complexity O(1)

	func largestGoodInteger(_ num: String) -> String {

		guard !num.isEmpty else { return "" }
		guard num.count > 3 else { return Set(num).count == 1 ? num : "" }

		// Time O(1), Space O(1)
		var window = num.prefix(3)
		var maxNum = "-1000"

		// Time Theoretically O(n) but Practically O(1) due to size
		if Set(window).count == 1 {
			maxNum = String(window)
		}

		let start = num.index(num.startIndex, offsetBy: 3)
		let end = num.index(num.endIndex, offsetBy: -1)

		// Time O(n)
		for char in num[start...end] {
			// Time Theoretically O(n) but Practically O(1)
			window.removeFirst()
			window.append(char)
			print(window)

			if Set(window).count == 1 {
				// Convertion to Int and back is Theoretically O(n) but in Practice O(1) due to constant size of 3 digits
				if Int(maxNum)! < Int(String(window))! {
					maxNum = String(window)
				}

			}
		}

		return maxNum != "-1000" ? String(maxNum) : ""
	}
}

let solution = Solution()
//print(solution.largestGoodInteger(num1))
//print(solution.largestGoodInteger(num2))
print(solution.largestGoodInteger(num3))
