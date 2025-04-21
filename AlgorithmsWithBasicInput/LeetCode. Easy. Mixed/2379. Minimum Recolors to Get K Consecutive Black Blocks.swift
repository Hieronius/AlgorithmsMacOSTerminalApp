//
//  2379. Minimum Recolors to Get K Consecutive Black Blocks.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 19.04.2025.
//

import Foundation

// MARK: 2379. Minimum Recolors to Get K Consecutive Black Blocks

let blocks1 = "WBBWWBBWBW"
let blocks2 = "WBWBBBW"

class Solution {

	// MARK: Time Complexity O(n)
	// MARK: Space Complexity O(n)

	func minimumRecolors(_ blocks: String, _ k: Int) -> Int {

		guard blocks.count >= k else { return 0 }

		let stringAr = Array(blocks)

		var window: [Character: Int] = [:]
		var minSteps = Int.max

		var windowStart = 0
		var windowEnd = k


		window = stringAr[0..<k].reduce(into: [:]) { result, next in
			result[next, default: 0] += 1
		}

		minSteps = min(minSteps, (window["W"] ?? 0))

		while windowEnd < stringAr.count {

			let next = stringAr[windowEnd]
			let first = stringAr[windowStart]

			window[next, default: 0] += 1

			if window[first] != nil {
				if window[first]! > 0 {
					window[first]! -= 1
				} else {
					window[first] = nil
				}
			}

			minSteps = min(minSteps, (window["W"] ?? 0))

			windowStart += 1
			windowEnd += 1
		}

		return minSteps
	}
}

let solution = Solution()
print(solution.minimumRecolors(blocks1, 7))
